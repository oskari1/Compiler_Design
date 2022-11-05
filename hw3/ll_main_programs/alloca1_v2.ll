define i64 @main(i64 %argc, i8** %arcv) {
  %1 = alloca i64
  %2 = load i64, i64* %1
  ret i64 %2 
}

