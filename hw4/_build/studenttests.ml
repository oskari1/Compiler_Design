open Ast
open Astlib
open Assert
open Driver 

(* These tests are provided by you *)

(* You should also add additional test cases here to help you   *)
(* debug your program.                                          *)
(*
let assert_eq_ast (f: 'a -> 'a -> bool) (print : 'a -> string) (x: 'a) (y: unit -> 'a)  : assertion =
  fun () ->
  let result = y () in
  if f x result then () else
      let msg = Printf.sprintf "EXPECTED: %s\nGOT: %s\n" (print x) (print result) in
      failwith msg

let parse_test parse (compare : 'a -> 'a -> bool) (printer : 'a -> string) (code : string) (ast : 'a)  : assertion =
  let lexbuf = Lexing.from_string code in
  let result = Lexer.token lexbuf in
  assert_eq_ast compare printer ast (fun () -> result)

let exp_test code ast = parse_test Parser.exp_top eq_exp string_of_exp code ast

let parse_consts =
  [ ("parse consts test one", exp_test "bool[] null" (no_loc (CNull (RArray TBool))))
  ; ("parse consts test two", exp_test "42" (no_loc (CInt 42L)))
  ; ("parse consts test three", exp_test "true" (no_loc (CBool true)))
  ; ("parse consts test four", exp_test "false" (no_loc (CBool false)))
  ; ("parse consts test five", exp_test "\"hello world\"" (no_loc (CStr "hello world")))
  ; ("parse consts test six", exp_test "new int[]{1, 2, 3}" (no_loc (CArr (TInt, [no_loc (CInt 1L); no_loc (CInt 2L); no_loc (CInt 3L)]))))
  ]*)
let provided_tests : suite = [
] 
