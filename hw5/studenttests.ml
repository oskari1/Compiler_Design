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

let typecheck_subtyping_tests =
  [ "hw5programs/tc_subtyping1.oat"
  ; "hw5programs/tc_subtyping2.oat"
  ; "hw5programs/tc_subtyping3.oat"
  ; "hw5programs/tc_subtyping4.oat"
  ; "hw5programs/tc_subtyping5.oat"
  ; "hw5programs/tc_subtyping6.oat"
  ; "hw5programs/tc_subtyping7.oat"
  ; "hw5programs/tc_subtyping8.oat"
  ; "hw5programs/tc_subtyping9.oat"            
  ]

let provided_tests : suite = [
  GradedTest("subtype unit tests", 3, unit_tests);
  GradedTest("tc subtyping tests", 4, typecheck_file_correct typecheck_subtyping_tests);(*
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