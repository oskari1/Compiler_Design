; generated from: ./nicdard/subtype_global_struct.oat
target triple = "x86_64-unknown-linux"
%A = type { i64 }
%B = type { i64, i1 }
%C = type { i64, i1, i64 }

@a = global %A* @_global_struct8216
@_global_struct8216 = global %A { i64 10 }
@b = global %B* @_global_struct8215
@_global_struct8215 = global %B { i64 20, i1 1 }
@c = global %C* @_global_struct8214
@_global_struct8214 = global %C { i64 30, i1 0, i64 4 }

define i64 @program(i64 %_argc8207, { i64, [0 x i8*] }* %_argv8205) {
  %_argc8208 = alloca i64
  %_argv8206 = alloca { i64, [0 x i8*] }*
  store i64 %_argc8207, i64* %_argc8208
  store { i64, [0 x i8*] }* %_argv8205, { i64, [0 x i8*] }** %_argv8206
  %_c8209 = load %C*, %C** @c
  store %C* %_c8209, %C** @b
  %_b8210 = load %B*, %B** @b
  store %B* %_b8210, %B** @a
  %_a8211 = load %A*, %A** @a
  %_index_ptr8212 = getelementptr %A, %A* %_a8211, i32 0, i32 0
  %_proj8213 = load i64, i64* %_index_ptr8212
  ret i64 %_proj8213
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
