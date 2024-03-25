Initializing the Build Environment
----------------------------------

You will need to install the GSL library as a shared object library (`apt install libgsl-dev`).

```bash
opam switch create . 5.1.0+options --no-install
eval $(opam env)
opam update
opam upgrade
dune build colorwheel.opam # to generate OPAM package file
opam install --deps-only . -y
dune build
dune runtest
dune exec src/main.exe
```

Additionally, if you are building this project on MacOs, you may want to consider installing the following packages.

```bash
opam install ocaml-lsp-server ocamlformat -y
```
