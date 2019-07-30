#!/usr/bin/env ocaml
#use "topfind"
#require "topkg"
open Topkg

let () =
  Pkg.describe "mirage-bootvar-riscv" @@ fun c ->
  Ok [ Pkg.mllib "lib/mirage-bootvar-riscv.mllib"; ]