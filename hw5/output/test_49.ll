; generated from: ./nicdard/subtype_global_struct.oat
target triple = "x86_64-unknown-linux"
%A = type { i64 }
%B = type { i64, i1 }
%C = type { i64, i1, i64 }

@a = global %A* @_global_struct8324
@_global_struct8324 = global %A { i64 10 }
@b = global %B* @_global_struct8323
@_global_struct8323 = global %B { i64 20, i1 1 }
@c = global %C* @_global_struct8322
@_global_struct8322 = global %C { i64 30, i1 0, i64 4 }

define i64 @program(i64 %_argc8315, { i64, [0 x i8*] }* %_argv8313) {
  %_argc8316 = alloca i64
  %_argv8314 = alloca { i64, [0 x i8*] }*
  store i64 %_argc8315, i64* %_argc8316
  store { i64, [0 x i8*] }* %_argv8313, { i64, [0 x i8*] }** %_argv8314
  %_c8317 = load %C*, %C** @c
  store %C* %_c8317, %C** @b
  %_b8318 = load %B*, %B** @b
  store %B* %_b8318, %B** @a
  %_a8319 = load %A*, %A** @a
  %_index_ptr8320 = getelementptr %A, %A* %_a8319, i32 0, i32 0
  %_proj8321 = load i64, i64* %_index_ptr8320
  ret i64 %_proj8321
}


declare i64* @oat_malloc(i64)
declare i64* @oat_alloc_array(i64)
declare void @oat_assert_not_null(i8*)
declare void @oat_assert_array_length(i64*, i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
