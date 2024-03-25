(lang dune 2.9)
(name colorwheel)
(license GPL-3.0)
(authors "Larry D. Lee Jr. <llee454@gmail.com>")
(maintainers "Larry D. Lee Jr. <llee454@gmail.com>")
(source (github llee454/colorwheel-analysis))
(version 1.0.0)
(generate_opam_files)
(package
 (name colorwheel)
 (synopsis "This package contains code that is used to analyze the evidence color wheel tool.")
 (description "
  This package contains code that is used to analyze the evidence
  color wheel tool. The Evidence colorwheel is a Nomogram, a graphical
  tool for performing calculations, specifically for calculating the
  probability of a given hypothesis based on the probabilities
  associated with a set of evidence.
  ")
 (depends
  core
  dune
  ppx_jane
  yojson
  ppx_deriving_yojson
  eio_main
  (amina (= 1.0.0))
 )
)