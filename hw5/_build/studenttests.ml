open Assert
open Driver

(* These tests are provided by you -- they will be graded manually *)

(* You should also add additional test cases here to help you   *)
(* debug your program.                                          *)

let typecheck path () =
  let () = Platform.verb @@ Printf.sprintf "** Processing: %s\n" path in
  let oat_ast = parse_oat_file path in
  Typechecker.typecheck_program oat_ast

let typecheck_correct (a : assertion) () =
  try a () with Typechecker.TypeError s -> failwith "Should not have had a type error"

let typecheck_file_correct tests =
  List.map (fun p -> p, typecheck_correct (typecheck p)) tests

let unit_tests = [
  "subtype_stringQ_stringQ",
   (fun () ->
       if Typechecker.subtype Tctxt.empty (TNullRef RString) (TNullRef RString) then ()
       else failwith "should not fail")                                                                                     
; ("no_subtype_stringQ_stringQ",
   (fun () ->
       if Typechecker.subtype Tctxt.empty (TNullRef RString) (TRef RString) then
         failwith "should not succeed" else ())
  )
]

let tc_ok_tests = [ (*
  "hw5programs/tc_struct_ok.oat"
; "hw5programs/tc_func_ret_ok.oat"
; "hw5programs/tc_func_arg_ok.oat"
;*) "hw5programs/tc_ifq1.oat"(*
; "oatprograms/tc_ok1.oat"
; "oatprograms/tc_ok2.oat"
; "oatprograms/tc_ok4.oat"
; "oatprograms/tc_ok5.oat"
; "oatprograms/tc_ok6.oat"
; "oatprograms/tc_ok7.oat"
; "oatprograms/tc_ok8.oat"
; "hw5programs/tc_arrow.oat"
; "hw5programs/tc_arrow_null.oat"
; "hw5programs/tc_arrow_null_rec.oat" *)
]
let oat_tc_ok_file_test path =
  let _ = Platform.verb @@ Printf.sprintf "** OAT Typechecker OK Processing: %s\n" path in
  let oat_ast = parse_oat_file path in
  let _= Typechecker.typecheck_program oat_ast in
  ()
let executed_tc_ok_file tests =
  List.map (fun path ->
      ("typechecking: " ^ path, fun () -> oat_tc_ok_file_test path)) tests

let provided_tests : suite = [
  GradedTest("tc ok tests", 10, executed_tc_ok_file tc_ok_tests)
  (*GradedTest("subtype unit tests", 3, unit_tests);
  GradedTest("tc subtyping tests", 4, typecheck_file_correct typecheck_subtyping_tests);
  GradedTest("tc subtyping error tests", 4, typecheck_file_error typecheck_subtyping_error_tests);  
  GradedTest("tc statement error tests", 5, typecheck_file_error typecheck_statement_error_tests);
  GradedTest("tc statement correct tests", 5, typecheck_file_correct typecheck_correct_statement_tests);
  GradedTest("tc other correct tests", 5, typecheck_file_correct typecheck_correct_other_tests);
  GradedTest("tc null/not null error tests", 5, typecheck_file_error typecheck_error_null_not_null_tests);
  GradedTest("tc expression error tests", 5, typecheck_file_error typecheck_error_expression_tests);
  GradedTest("tc struct/global error tests", 5, typecheck_file_error (typecheck_error_struct_tests @ typecheck_error_global_tests));
  GradedTest("extra tc err tests", 5, typecheck_file_error tc_err_tests);
*)
]