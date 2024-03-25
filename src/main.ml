open! Core
open! Lib

type t = {
  weights: (Weights.Probabiliy_class.t * Weights.Probabiliy_class.t * Weights.Estimate.t) array;
  needed_weights: (Weights.Probabiliy_class.t * Weights.Probabiliy_class.t * Weights.Estimate.t) array;
}
[@@deriving to_yojson]

let () =
  Eio_main.run @@ fun env ->
  let stdout = Eio.Stdenv.stdout env in
  { weights = Weights.get_weights (); needed_weights = Weights.get_needed_weights () }
  |> [%to_yojson: t]
  |> sprintf !"%{Yojson.Safe.pretty_to_string}"
  |> Fn.flip Eio.Flow.copy_string stdout
