; generated from: oatprograms/run42.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_583 = alloca i64
  store i64 %argc, i64* %_583
  %_584 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_584
  %_585 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_594 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_603 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_612 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_621 = alloca { i64, [0 x i64] }*
  %_raw_array586 = call i64* @oat_alloc_array(i64 3)
  %_array587 = bitcast i64* %_raw_array586 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array592 = call i64* @oat_alloc_array(i64 1)
  %_array593 = bitcast i64* %_raw_array592 to { i64, [0 x i64] }*
  %_raw_array590 = call i64* @oat_alloc_array(i64 1)
  %_array591 = bitcast i64* %_raw_array590 to { i64, [0 x i64] }*
  %_raw_array588 = call i64* @oat_alloc_array(i64 1)
  %_array589 = bitcast i64* %_raw_array588 to { i64, [0 x i64] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array587, { i64, [0 x { i64, [0 x i64] }*] }** %_585
  %_raw_array595 = call i64* @oat_alloc_array(i64 3)
  %_array596 = bitcast i64* %_raw_array595 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array601 = call i64* @oat_alloc_array(i64 1)
  %_array602 = bitcast i64* %_raw_array601 to { i64, [0 x i64] }*
  %_raw_array599 = call i64* @oat_alloc_array(i64 1)
  %_array600 = bitcast i64* %_raw_array599 to { i64, [0 x i64] }*
  %_raw_array597 = call i64* @oat_alloc_array(i64 1)
  %_array598 = bitcast i64* %_raw_array597 to { i64, [0 x i64] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array596, { i64, [0 x { i64, [0 x i64] }*] }** %_594
  %_raw_array604 = call i64* @oat_alloc_array(i64 3)
  %_array605 = bitcast i64* %_raw_array604 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array610 = call i64* @oat_alloc_array(i64 1)
  %_array611 = bitcast i64* %_raw_array610 to { i64, [0 x i64] }*
  %_raw_array608 = call i64* @oat_alloc_array(i64 1)
  %_array609 = bitcast i64* %_raw_array608 to { i64, [0 x i64] }*
  %_raw_array606 = call i64* @oat_alloc_array(i64 1)
  %_array607 = bitcast i64* %_raw_array606 to { i64, [0 x i64] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array605, { i64, [0 x { i64, [0 x i64] }*] }** %_603
  %_raw_array613 = call i64* @oat_alloc_array(i64 3)
  %_array614 = bitcast i64* %_raw_array613 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array619 = call i64* @oat_alloc_array(i64 1)
  %_array620 = bitcast i64* %_raw_array619 to { i64, [0 x i64] }*
  %_raw_array617 = call i64* @oat_alloc_array(i64 1)
  %_array618 = bitcast i64* %_raw_array617 to { i64, [0 x i64] }*
  %_raw_array615 = call i64* @oat_alloc_array(i64 1)
  %_array616 = bitcast i64* %_raw_array615 to { i64, [0 x i64] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array614, { i64, [0 x { i64, [0 x i64] }*] }** %_612
  %_raw_array622 = call i64* @oat_alloc_array(i64 3)
  %_array623 = bitcast i64* %_raw_array622 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array623, { i64, [0 x i64] }** %_621
  %_624 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_621
  %_626 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_594
  %_625 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_626, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_624, { i64, [0 x i64] }** %_625
  %_628 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_594
  %_629 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_628, i32 0, i32 1, i32 0
  %_630 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_629
  %_627 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_630, i32 0, i32 1, i32 0
  store i64 2, i64* %_627
  %_631 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_594
  store { i64, [0 x { i64, [0 x i64] }*] }* %_631, { i64, [0 x { i64, [0 x i64] }*] }** %_585
  %_632 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_585
  store { i64, [0 x { i64, [0 x i64] }*] }* %_632, { i64, [0 x { i64, [0 x i64] }*] }** %_603
  %_633 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_612
  store { i64, [0 x { i64, [0 x i64] }*] }* %_633, { i64, [0 x { i64, [0 x i64] }*] }** %_585
  %_634 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_603
  store { i64, [0 x { i64, [0 x i64] }*] }* %_634, { i64, [0 x { i64, [0 x i64] }*] }** %_594
  %_635 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_594
  store { i64, [0 x { i64, [0 x i64] }*] }* %_635, { i64, [0 x { i64, [0 x i64] }*] }** %_612
  %_636 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_612
  store { i64, [0 x { i64, [0 x i64] }*] }* %_636, { i64, [0 x { i64, [0 x i64] }*] }** %_603
  %_637 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_603
  %_638 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_637, i32 0, i32 1, i32 0
  %_639 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_638
  %_640 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_639, i32 0, i32 1, i32 0
  %_641 = load i64, i64* %_640
  ret i64 %_641
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
