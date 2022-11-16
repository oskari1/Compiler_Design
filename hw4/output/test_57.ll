; generated from: oatprograms/josh_joyce_test.oat
target triple = "x86_64-unknown-linux"
@arr1 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_1963 to { i64, [0 x i64] }*)
@_1963 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@arr2 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_1962 to { i64, [0 x i64] }*)
@_1962 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 5 ] }

define i64 @arrcheck({ i64, [0 x i64] }* %ar1, { i64, [0 x i64] }* %ar2, i64 %len) {
  %_1936 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %ar1, { i64, [0 x i64] }** %_1936
  %_1937 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %ar2, { i64, [0 x i64] }** %_1937
  %_1938 = alloca i64
  store i64 %len, i64* %_1938
  %_1939 = alloca i64
  %_1940 = alloca i64
  store i64 0, i64* %_1939
  store i64 0, i64* %_1940
  br label %_1944
_1944:
  %_1941 = load i64, i64* %_1940
  %_1942 = load i64, i64* %_1938
  %_1943 = icmp slt i64 %_1941, %_1942
  br i1 %_1943, label %_1945, label %_1946
_1945:
  %_1947 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1936
  %_1948 = load i64, i64* %_1940
  %_1949 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1947, i32 0, i32 1, i64 %_1948
  %_1950 = load i64, i64* %_1949
  %_1951 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1937
  %_1952 = load i64, i64* %_1940
  %_1953 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1951, i32 0, i32 1, i64 %_1952
  %_1954 = load i64, i64* %_1953
  %_1955 = icmp ne i64 %_1950, %_1954
  br i1 %_1955, label %_1956, label %_1957
_1956:
  store i64 1, i64* %_1939
  br label %_1958
_1957:
  br label %_1958
_1958:
  %_1959 = load i64, i64* %_1940
  %_1960 = add i64 %_1959, 1
  store i64 %_1960, i64* %_1940
  br label %_1944
_1946:
  %_1961 = load i64, i64* %_1939
  ret i64 %_1961
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1925 = alloca i64
  store i64 %argc, i64* %_1925
  %_1926 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1926
  %_1927 = alloca i64
  store i64 1, i64* %_1927
  %_1929 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr1
  %_1930 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr2
  %_1928 = call i64 @arrcheck({ i64, [0 x i64] }* %_1929, { i64, [0 x i64] }* %_1930, i64 4)
  %_1931 = icmp eq i64 %_1928, 1
  br i1 %_1931, label %_1932, label %_1933
_1932:
  store i64 0, i64* %_1927
  br label %_1934
_1933:
  br label %_1934
_1934:
  %_1935 = load i64, i64* %_1927
  ret i64 %_1935
}


declare i64* @oat_alloc_array(i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
