; generated from: oatprograms/binary_search.oat
target triple = "x86_64-unknown-linux"
@_5857 = global [9 x i8] c"Correct!\00"

define i64 @euclid_division(i64 %numerator, i64 %denominator) {
  %_5904 = alloca i64
  store i64 %numerator, i64* %_5904
  %_5905 = alloca i64
  store i64 %denominator, i64* %_5905
  %_5916 = alloca i64
  %_5917 = alloca i64
  %_5906 = load i64, i64* %_5905
  %_5907 = icmp slt i64 %_5906, 0
  br i1 %_5907, label %_5908, label %_5909
_5908:
  %_5912 = load i64, i64* %_5904
  %_5913 = load i64, i64* %_5905
  %_5914 = sub i64 0, %_5913
  %_5911 = call i64 @euclid_division(i64 %_5912, i64 %_5914)
  %_5915 = sub i64 0, %_5911
  ret i64 %_5915
_5909:
  br label %_5910
_5910:
  store i64 0, i64* %_5916
  %_5918 = load i64, i64* %_5904
  store i64 %_5918, i64* %_5917
  %_5919 = load i64, i64* %_5904
  %_5920 = icmp slt i64 %_5919, 0
  br i1 %_5920, label %_5921, label %_5922
_5921:
  %_5924 = load i64, i64* %_5904
  %_5925 = sub i64 0, %_5924
  store i64 %_5925, i64* %_5917
  br label %_5929
_5929:
  %_5926 = load i64, i64* %_5917
  %_5927 = load i64, i64* %_5905
  %_5928 = icmp sge i64 %_5926, %_5927
  br i1 %_5928, label %_5930, label %_5931
_5930:
  %_5932 = load i64, i64* %_5916
  %_5933 = add i64 %_5932, 1
  store i64 %_5933, i64* %_5916
  %_5934 = load i64, i64* %_5917
  %_5935 = load i64, i64* %_5905
  %_5936 = sub i64 %_5934, %_5935
  store i64 %_5936, i64* %_5917
  br label %_5929
_5931:
  %_5937 = load i64, i64* %_5917
  %_5938 = icmp eq i64 %_5937, 0
  br i1 %_5938, label %_5939, label %_5940
_5939:
  %_5942 = load i64, i64* %_5916
  %_5943 = sub i64 0, %_5942
  ret i64 %_5943
_5940:
  %_5944 = load i64, i64* %_5916
  %_5945 = sub i64 0, %_5944
  %_5946 = sub i64 %_5945, 1
  ret i64 %_5946
_5922:
  br label %_5923
_5923:
  br label %_5950
_5950:
  %_5947 = load i64, i64* %_5917
  %_5948 = load i64, i64* %_5905
  %_5949 = icmp sge i64 %_5947, %_5948
  br i1 %_5949, label %_5951, label %_5952
_5951:
  %_5953 = load i64, i64* %_5916
  %_5954 = add i64 %_5953, 1
  store i64 %_5954, i64* %_5916
  %_5955 = load i64, i64* %_5917
  %_5956 = load i64, i64* %_5905
  %_5957 = sub i64 %_5955, %_5956
  store i64 %_5957, i64* %_5917
  br label %_5950
_5952:
  %_5958 = load i64, i64* %_5916
  ret i64 %_5958
}

define i1 @binary_search({ i64, [0 x i64] }* %input, i64 %key, i64 %min, i64 %max) {
  %_5859 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %input, { i64, [0 x i64] }** %_5859
  %_5860 = alloca i64
  store i64 %key, i64* %_5860
  %_5861 = alloca i64
  store i64 %min, i64* %_5861
  %_5862 = alloca i64
  store i64 %max, i64* %_5862
  %_5869 = alloca i64
  %_5863 = load i64, i64* %_5862
  %_5864 = load i64, i64* %_5861
  %_5865 = icmp slt i64 %_5863, %_5864
  br i1 %_5865, label %_5866, label %_5867
_5866:
  ret i1 0
_5867:
  br label %_5868
_5868:
  %_5871 = load i64, i64* %_5862
  %_5872 = load i64, i64* %_5861
  %_5873 = add i64 %_5871, %_5872
  %_5870 = call i64 @euclid_division(i64 %_5873, i64 2)
  store i64 %_5870, i64* %_5869
  %_5874 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5859
  %_5875 = load i64, i64* %_5869
  %_5876 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5874, i32 0, i32 1, i64 %_5875
  %_5877 = load i64, i64* %_5876
  %_5878 = load i64, i64* %_5860
  %_5879 = icmp sgt i64 %_5877, %_5878
  br i1 %_5879, label %_5880, label %_5881
_5880:
  %_5884 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5859
  %_5885 = load i64, i64* %_5860
  %_5886 = load i64, i64* %_5861
  %_5887 = load i64, i64* %_5869
  %_5888 = sub i64 %_5887, 1
  %_5883 = call i1 @binary_search({ i64, [0 x i64] }* %_5884, i64 %_5885, i64 %_5886, i64 %_5888)
  ret i1 %_5883
_5881:
  br label %_5882
_5882:
  %_5889 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5859
  %_5890 = load i64, i64* %_5869
  %_5891 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5889, i32 0, i32 1, i64 %_5890
  %_5892 = load i64, i64* %_5891
  %_5893 = load i64, i64* %_5860
  %_5894 = icmp slt i64 %_5892, %_5893
  br i1 %_5894, label %_5895, label %_5896
_5895:
  %_5899 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5859
  %_5900 = load i64, i64* %_5860
  %_5901 = load i64, i64* %_5869
  %_5902 = add i64 %_5901, 1
  %_5903 = load i64, i64* %_5862
  %_5898 = call i1 @binary_search({ i64, [0 x i64] }* %_5899, i64 %_5900, i64 %_5902, i64 %_5903)
  ret i1 %_5898
_5896:
  ret i1 1
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_5820 = alloca i64
  store i64 %argc, i64* %_5820
  %_5821 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_5821
  %_5822 = alloca { i64, [0 x i64] }*
  %_5825 = alloca i64
  %_5839 = alloca i1
  %_5842 = alloca i1
  %_raw_array5823 = call i64* @oat_alloc_array(i64 100)
  %_array5824 = bitcast i64* %_raw_array5823 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5824, { i64, [0 x i64] }** %_5822
  store i64 0, i64* %_5825
  br label %_5828
_5828:
  %_5826 = load i64, i64* %_5825
  %_5827 = icmp slt i64 %_5826, 100
  br i1 %_5827, label %_5829, label %_5830
_5829:
  %_5831 = load i64, i64* %_5825
  %_5832 = mul i64 2, %_5831
  %_5833 = add i64 %_5832, 1
  %_5835 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5822
  %_5836 = load i64, i64* %_5825
  %_5834 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5835, i32 0, i32 1, i64 %_5836
  store i64 %_5833, i64* %_5834
  %_5837 = load i64, i64* %_5825
  %_5838 = add i64 %_5837, 1
  store i64 %_5838, i64* %_5825
  br label %_5828
_5830:
  %_5841 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5822
  %_5840 = call i1 @binary_search({ i64, [0 x i64] }* %_5841, i64 80, i64 0, i64 99)
  store i1 %_5840, i1* %_5839
  %_5844 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5822
  %_5843 = call i1 @binary_search({ i64, [0 x i64] }* %_5844, i64 81, i64 0, i64 99)
  store i1 %_5843, i1* %_5842
  %_5845 = load i1, i1* %_5839
  %_5846 = load i1, i1* %_5842
  %_5847 = and i1 %_5845, %_5846
  %_5848 = icmp eq i1 %_5847, 0
  %_5849 = load i1, i1* %_5839
  %_5850 = load i1, i1* %_5842
  %_5851 = or i1 %_5849, %_5850
  %_5852 = and i1 %_5848, %_5851
  br i1 %_5852, label %_5853, label %_5854
_5853:
  %_5858 = getelementptr [9 x i8], [9 x i8]* @_5857, i32 0, i32 0
  call void @print_string(i8* %_5858)
  br label %_5855
_5854:
  br label %_5855
_5855:
  ret i64 0
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
