; generated from: oatprograms/bsort.oat
target triple = "x86_64-unknown-linux"
@_882 = global [2 x i8] c" \00"

define void @bubble_sort({ i64, [0 x i64] }* %numbers, i64 %array_size) {
  %_890 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %numbers, { i64, [0 x i64] }** %_890
  %_891 = alloca i64
  store i64 %array_size, i64* %_891
  %_892 = alloca i64
  %_893 = alloca i64
  %_901 = alloca i64
  store i64 0, i64* %_892
  %_894 = load i64, i64* %_891
  %_895 = sub i64 %_894, 1
  store i64 %_895, i64* %_893
  br label %_898
_898:
  %_896 = load i64, i64* %_893
  %_897 = icmp sgt i64 %_896, 0
  br i1 %_897, label %_899, label %_900
_899:
  store i64 1, i64* %_901
  br label %_905
_905:
  %_902 = load i64, i64* %_901
  %_903 = load i64, i64* %_893
  %_904 = icmp sle i64 %_902, %_903
  br i1 %_904, label %_906, label %_907
_906:
  %_908 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_890
  %_909 = load i64, i64* %_901
  %_910 = sub i64 %_909, 1
  %_911 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_908, i32 0, i32 1, i64 %_910
  %_912 = load i64, i64* %_911
  %_913 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_890
  %_914 = load i64, i64* %_893
  %_915 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_913, i32 0, i32 1, i64 %_914
  %_916 = load i64, i64* %_915
  %_917 = icmp sgt i64 %_912, %_916
  br i1 %_917, label %_918, label %_919
_918:
  %_921 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_890
  %_922 = load i64, i64* %_901
  %_923 = sub i64 %_922, 1
  %_924 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_921, i32 0, i32 1, i64 %_923
  %_925 = load i64, i64* %_924
  store i64 %_925, i64* %_892
  %_926 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_890
  %_927 = load i64, i64* %_893
  %_928 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_926, i32 0, i32 1, i64 %_927
  %_929 = load i64, i64* %_928
  %_931 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_890
  %_932 = load i64, i64* %_901
  %_933 = sub i64 %_932, 1
  %_930 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_931, i32 0, i32 1, i64 %_933
  store i64 %_929, i64* %_930
  %_934 = load i64, i64* %_892
  %_936 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_890
  %_937 = load i64, i64* %_893
  %_935 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_936, i32 0, i32 1, i64 %_937
  store i64 %_934, i64* %_935
  br label %_920
_919:
  br label %_920
_920:
  %_938 = load i64, i64* %_901
  %_939 = add i64 %_938, 1
  store i64 %_939, i64* %_901
  br label %_905
_907:
  %_940 = load i64, i64* %_893
  %_941 = sub i64 %_940, 1
  store i64 %_941, i64* %_893
  br label %_898
_900:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_857 = alloca i64
  store i64 %argc, i64* %_857
  %_858 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_858
  %_859 = alloca { i64, [0 x i64] }*
  %_raw_array860 = call i64* @oat_alloc_array(i64 8)
  %_array861 = bitcast i64* %_raw_array860 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array861, { i64, [0 x i64] }** %_859
  %_863 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_859
  %_862 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_863, i32 0, i32 1, i32 0
  store i64 121, i64* %_862
  %_865 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_859
  %_864 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_865, i32 0, i32 1, i32 1
  store i64 125, i64* %_864
  %_867 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_859
  %_866 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_867, i32 0, i32 1, i32 2
  store i64 120, i64* %_866
  %_869 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_859
  %_868 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_869, i32 0, i32 1, i32 3
  store i64 111, i64* %_868
  %_871 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_859
  %_870 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_871, i32 0, i32 1, i32 4
  store i64 116, i64* %_870
  %_873 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_859
  %_872 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_873, i32 0, i32 1, i32 5
  store i64 110, i64* %_872
  %_875 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_859
  %_874 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_875, i32 0, i32 1, i32 6
  store i64 117, i64* %_874
  %_877 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_859
  %_876 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_877, i32 0, i32 1, i32 7
  store i64 119, i64* %_876
  %_880 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_859
  %_879 = call i8* @string_of_array({ i64, [0 x i64] }* %_880)
  call void @print_string(i8* %_879)
  %_883 = getelementptr [2 x i8], [2 x i8]* @_882, i32 0, i32 0
  call void @print_string(i8* %_883)
  %_885 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_859
  call void @bubble_sort({ i64, [0 x i64] }* %_885, i64 8)
  %_888 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_859
  %_887 = call i8* @string_of_array({ i64, [0 x i64] }* %_888)
  call void @print_string(i8* %_887)
  %_889 = sub i64 0, 1
  ret i64 %_889
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
