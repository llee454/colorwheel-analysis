open! Core

module Estimate = struct
  type 'a t = {
    lower: 'a;
    middle: 'a;
    upper: 'a;
  }
  [@@deriving to_yojson]
end

module Probabiliy_class = struct
  type t =
    | Blue
    | Green
    | Yellow
    | Orange
    | Red
  [@@deriving to_yojson]

  let get_values =
    let open Estimate in
    function
    | Blue -> { lower = 0.95; middle = 0.975; upper = 1.0 }
    | Green -> { lower = 0.8; middle = 0.875; upper = Float.(0.95 - epsilon_float) }
    | Yellow -> Float.{ lower = 0.2 + epsilon_float; middle = 0.5; upper = 0.8 - epsilon_float }
    | Orange -> { lower = Float.(0.05 + epsilon_float); middle = 0.125; upper = 0.2 }
    | Red -> { lower = 0.0; middle = 0.025; upper = 0.05 }

  let get_class =
    let open Float in
    function
    | x when x <= 0.05 -> Red
    | x when x <= 0.2 -> Orange
    | x when x >= 0.95 -> Blue
    | x when x >= 0.8 -> Green
    | _ -> Yellow

  let get_probability_classes = [| Blue; Green; Yellow; Orange; Red |]
end

(**
  The weight required to increase the probability of a hypothesis
  from the minimum probability class (0.025) to the maximum probability
  class (0.975)
*)
let maximum_weight = 7.3271

(**
  Accepts two probabilities: P(E|H) - the probability of seeing some
  evidence E given a hypothesis H, and P(E|not H), the probability of
  seeing the evidence E given that the hypothesis is false; and
  returns the weight of the evidence E with respect to H.
*)
let get_weight pe pne = Float.(log (pe / pne))

(**
  Accepts unit and returns the set of weight classes that can be
  formed for evidence.

  Note: that the weight class of evidence E equals the log of the
  probabilities P(E|H) and P(E|not H) where these probabilities are
  described using the probability classes.
*)
let get_weights () =
  let open Probabiliy_class in
  Array.concat_map get_probability_classes ~f:(fun e ->
      let pe = get_values e in
      Array.map get_probability_classes ~f:(fun ne ->
          let pne = get_values ne in
          ( e,
            ne,
            Estimate.
              {
                lower = get_weight pe.lower pne.upper;
                middle = get_weight pe.middle pne.middle;
                upper = get_weight pe.upper pne.lower;
              } )
      )
  )

(**
  Accepts two arguments: P(H), the probability of a given hypothesis
  without some new evidence E; and P(H|E), the probability of H given
  some new evidence E; and returns the weight of the evidence E needed
  to produce the given posterior probability.
*)
let get_needed_weight ph phe =
  let open Float in
  -log (ph / (1.0 - ph) * ((phe ** -1.0) - 1.0))

let%expect_test "get_needed_weight" =
  printf !"%{sexp: float}" (get_needed_weight 0.125 0.875);
  [%expect {| 3.8918202981106269 |}]

let get_needed_weights () =
  let open Probabiliy_class in
  Array.concat_map get_probability_classes ~f:(fun h ->
      let ph = get_values h in
      Array.map get_probability_classes ~f:(fun he ->
          let phe = get_values he in
          ( h,
            he,
            Estimate.
              {
                lower = get_needed_weight ph.upper phe.lower;
                middle = get_needed_weight ph.middle phe.middle;
                upper = get_needed_weight ph.lower phe.upper;
              } )
      )
  )

(**
  Accepts two arguments:
  * P(H) - the probability of the hypothesis being true before the new
    evidence
  * w - the weight of the new evidence
  and returns the probability that the hypothesis is true given the
  new evidence.
*)
let get_posterior ph w =
  let open Float in
  (1.0 + (exp (-w) * (1.0 - ph) / ph)) ** -1.0

let%expect_test "get_posterior" =
  printf !"%{sexp: float}" (get_posterior 0.2 1.3863);
  [%expect {| 0.50000140972002738 |}]

(**
  Aminas are a convienence unit for measuring evidential weight. Each
  Amina equals 0.75 nats worth of evidential weight.

  The meaninful range of evidential weight is betwing -7.5 and 7.5
  nats, so this unit produces weight scores typically ranging beting
  -10 and 10.
*)
let amina_const = 0.75

let aminas_to_nats x = Float.(x * amina_const)
let nats_to_aminas w = Float.(w / amina_const)

(**
  Returns an array listing the possible combinations of probability classes and evidential weights (in Amina's).
*)
let get_posteriors () =
  let open Probabiliy_class in
  Array.concat_map get_probability_classes ~f:(fun h ->
      Array.init 21 ~f:(fun i ->
          let x = i - 10 in
          let w = aminas_to_nats (Float.of_int x) in
          let ph = get_values h in
          ( h,
            x,
            Estimate.
              {
                lower = get_class @@ get_posterior ph.lower w;
                middle = get_class @@ get_posterior ph.middle w;
                upper = get_class @@ get_posterior ph.upper w;
              } )
      )
  )

(**
  Accepts three arguments:
  * P(H|E) - the probability of the hypothesis being true given the new evidence E
  * P(H) - the probability of the hypothesis without E
  * P(not H) - the probability that the hypothesis is false
  and returns the weight of evidence that is needed to shift the
  likelihood of H from P(H) to P(H|E).
*)
let get_weight_given_posterior phe ph pnh =
  let open Float in
  -log (ph / pnh * ((phe ** -1.0) - 1.0))

let%expect_test "get_weight_given_posterior" =
  printf !"%{sexp: float}" (get_weight_given_posterior 0.875 0.2 0.8);
  [%expect {| 3.3322045101752042 |}]
