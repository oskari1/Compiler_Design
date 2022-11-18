; generated from: oatprograms/life.oat
target triple = "x86_64-unknown-linux"
@len = global i64 4

define i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j, i64 %count) {
  %_7041 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_7041
  %_7042 = alloca i64
  store i64 %i, i64* %_7042
  %_7043 = alloca i64
  store i64 %j, i64* %_7043
  %_7044 = alloca i64
  store i64 %count, i64* %_7044
  %_7045 = load i64, i64* %_7042
  %_7046 = icmp sge i64 %_7045, 0
  %_7047 = load i64, i64* %_7043
  %_7048 = icmp sge i64 %_7047, 0
  %_7049 = and i1 %_7046, %_7048
  %_7050 = load i64, i64* %_7042
  %_7051 = load i64, i64* @len
  %_7052 = icmp slt i64 %_7050, %_7051
  %_7053 = and i1 %_7049, %_7052
  %_7054 = load i64, i64* %_7043
  %_7055 = load i64, i64* @len
  %_7056 = icmp slt i64 %_7054, %_7055
  %_7057 = and i1 %_7053, %_7056
  br i1 %_7057, label %_7058, label %_7059
_7058:
  %_7061 = load i64, i64* %_7044
  %_7062 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_7041
  %_7063 = load i64, i64* %_7042
  %_7064 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_7062, i32 0, i32 1, i64 %_7063
  %_7065 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7064
  %_7066 = load i64, i64* %_7043
  %_7067 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7065, i32 0, i32 1, i64 %_7066
  %_7068 = load i64, i64* %_7067
  %_7069 = add i64 %_7061, %_7068
  ret i64 %_7069
_7059:
  %_7070 = load i64, i64* %_7044
  ret i64 %_7070
}

define i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j) {
  %_6957 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_6957
  %_6958 = alloca i64
  store i64 %i, i64* %_6958
  %_6959 = alloca i64
  store i64 %j, i64* %_6959
  %_6960 = alloca i64
  %_6968 = alloca i64
  %_6961 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_6957
  %_6962 = load i64, i64* %_6958
  %_6963 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_6961, i32 0, i32 1, i64 %_6962
  %_6964 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6963
  %_6965 = load i64, i64* %_6959
  %_6966 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6964, i32 0, i32 1, i64 %_6965
  %_6967 = load i64, i64* %_6966
  store i64 %_6967, i64* %_6960
  store i64 0, i64* %_6968
  %_6970 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_6957
  %_6971 = load i64, i64* %_6958
  %_6972 = sub i64 %_6971, 1
  %_6973 = load i64, i64* %_6959
  %_6974 = sub i64 %_6973, 1
  %_6975 = load i64, i64* %_6968
  %_6969 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_6970, i64 %_6972, i64 %_6974, i64 %_6975)
  store i64 %_6969, i64* %_6968
  %_6977 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_6957
  %_6978 = load i64, i64* %_6958
  %_6979 = sub i64 %_6978, 1
  %_6980 = load i64, i64* %_6959
  %_6981 = load i64, i64* %_6968
  %_6976 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_6977, i64 %_6979, i64 %_6980, i64 %_6981)
  store i64 %_6976, i64* %_6968
  %_6983 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_6957
  %_6984 = load i64, i64* %_6958
  %_6985 = sub i64 %_6984, 1
  %_6986 = load i64, i64* %_6959
  %_6987 = add i64 %_6986, 1
  %_6988 = load i64, i64* %_6968
  %_6982 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_6983, i64 %_6985, i64 %_6987, i64 %_6988)
  store i64 %_6982, i64* %_6968
  %_6990 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_6957
  %_6991 = load i64, i64* %_6958
  %_6992 = load i64, i64* %_6959
  %_6993 = sub i64 %_6992, 1
  %_6994 = load i64, i64* %_6968
  %_6989 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_6990, i64 %_6991, i64 %_6993, i64 %_6994)
  store i64 %_6989, i64* %_6968
  %_6996 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_6957
  %_6997 = load i64, i64* %_6958
  %_6998 = load i64, i64* %_6959
  %_6999 = add i64 %_6998, 1
  %_7000 = load i64, i64* %_6968
  %_6995 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_6996, i64 %_6997, i64 %_6999, i64 %_7000)
  store i64 %_6995, i64* %_6968
  %_7002 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_6957
  %_7003 = load i64, i64* %_6958
  %_7004 = add i64 %_7003, 1
  %_7005 = load i64, i64* %_6959
  %_7006 = sub i64 %_7005, 1
  %_7007 = load i64, i64* %_6968
  %_7001 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_7002, i64 %_7004, i64 %_7006, i64 %_7007)
  store i64 %_7001, i64* %_6968
  %_7009 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_6957
  %_7010 = load i64, i64* %_6958
  %_7011 = add i64 %_7010, 1
  %_7012 = load i64, i64* %_6959
  %_7013 = load i64, i64* %_6968
  %_7008 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_7009, i64 %_7011, i64 %_7012, i64 %_7013)
  store i64 %_7008, i64* %_6968
  %_7015 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_6957
  %_7016 = load i64, i64* %_6958
  %_7017 = add i64 %_7016, 1
  %_7018 = load i64, i64* %_6959
  %_7019 = add i64 %_7018, 1
  %_7020 = load i64, i64* %_6968
  %_7014 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_7015, i64 %_7017, i64 %_7019, i64 %_7020)
  store i64 %_7014, i64* %_6968
  %_7021 = load i64, i64* %_6960
  %_7022 = icmp eq i64 %_7021, 1
  br i1 %_7022, label %_7023, label %_7024
_7023:
  %_7026 = load i64, i64* %_6968
  %_7027 = icmp slt i64 %_7026, 2
  br i1 %_7027, label %_7028, label %_7029
_7028:
  ret i64 0
_7029:
  %_7031 = load i64, i64* %_6968
  %_7032 = icmp slt i64 %_7031, 4
  br i1 %_7032, label %_7033, label %_7034
_7033:
  ret i64 1
_7034:
  br label %_7035
_7035:
  br label %_7030
_7030:
  ret i64 0
_7024:
  br label %_7025
_7025:
  %_7036 = load i64, i64* %_6968
  %_7037 = icmp eq i64 %_7036, 3
  br i1 %_7037, label %_7038, label %_7039
_7038:
  ret i64 1
_7039:
  ret i64 0
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_6836 = alloca i64
  store i64 %argc, i64* %_6836
  %_6837 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_6837
  %_6838 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_6869 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_6900 = alloca i64
  %_6911 = alloca i64
  %_6931 = alloca i64
  %_6938 = alloca i64
  %_raw_array6839 = call i64* @oat_alloc_array(i64 4)
  %_array6840 = bitcast i64* %_raw_array6839 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array6862 = call i64* @oat_alloc_array(i64 4)
  %_array6863 = bitcast i64* %_raw_array6862 to { i64, [0 x i64] }*
  %_6867 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6863, i32 0, i32 1, i32 3
  store i64 0, i64* %_6867
  %_6866 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6863, i32 0, i32 1, i32 2
  store i64 0, i64* %_6866
  %_6865 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6863, i32 0, i32 1, i32 1
  store i64 0, i64* %_6865
  %_6864 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6863, i32 0, i32 1, i32 0
  store i64 0, i64* %_6864
  %_6868 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6840, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array6863, { i64, [0 x i64] }** %_6868
  %_raw_array6855 = call i64* @oat_alloc_array(i64 4)
  %_array6856 = bitcast i64* %_raw_array6855 to { i64, [0 x i64] }*
  %_6860 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6856, i32 0, i32 1, i32 3
  store i64 0, i64* %_6860
  %_6859 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6856, i32 0, i32 1, i32 2
  store i64 1, i64* %_6859
  %_6858 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6856, i32 0, i32 1, i32 1
  store i64 1, i64* %_6858
  %_6857 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6856, i32 0, i32 1, i32 0
  store i64 1, i64* %_6857
  %_6861 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6840, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array6856, { i64, [0 x i64] }** %_6861
  %_raw_array6848 = call i64* @oat_alloc_array(i64 4)
  %_array6849 = bitcast i64* %_raw_array6848 to { i64, [0 x i64] }*
  %_6853 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6849, i32 0, i32 1, i32 3
  store i64 1, i64* %_6853
  %_6852 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6849, i32 0, i32 1, i32 2
  store i64 1, i64* %_6852
  %_6851 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6849, i32 0, i32 1, i32 1
  store i64 1, i64* %_6851
  %_6850 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6849, i32 0, i32 1, i32 0
  store i64 0, i64* %_6850
  %_6854 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6840, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array6849, { i64, [0 x i64] }** %_6854
  %_raw_array6841 = call i64* @oat_alloc_array(i64 4)
  %_array6842 = bitcast i64* %_raw_array6841 to { i64, [0 x i64] }*
  %_6846 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6842, i32 0, i32 1, i32 3
  store i64 0, i64* %_6846
  %_6845 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6842, i32 0, i32 1, i32 2
  store i64 0, i64* %_6845
  %_6844 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6842, i32 0, i32 1, i32 1
  store i64 0, i64* %_6844
  %_6843 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6842, i32 0, i32 1, i32 0
  store i64 0, i64* %_6843
  %_6847 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6840, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array6842, { i64, [0 x i64] }** %_6847
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array6840, { i64, [0 x { i64, [0 x i64] }*] }** %_6838
  %_raw_array6870 = call i64* @oat_alloc_array(i64 4)
  %_array6871 = bitcast i64* %_raw_array6870 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array6893 = call i64* @oat_alloc_array(i64 4)
  %_array6894 = bitcast i64* %_raw_array6893 to { i64, [0 x i64] }*
  %_6898 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6894, i32 0, i32 1, i32 3
  store i64 0, i64* %_6898
  %_6897 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6894, i32 0, i32 1, i32 2
  store i64 0, i64* %_6897
  %_6896 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6894, i32 0, i32 1, i32 1
  store i64 0, i64* %_6896
  %_6895 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6894, i32 0, i32 1, i32 0
  store i64 0, i64* %_6895
  %_6899 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6871, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array6894, { i64, [0 x i64] }** %_6899
  %_raw_array6886 = call i64* @oat_alloc_array(i64 4)
  %_array6887 = bitcast i64* %_raw_array6886 to { i64, [0 x i64] }*
  %_6891 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6887, i32 0, i32 1, i32 3
  store i64 0, i64* %_6891
  %_6890 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6887, i32 0, i32 1, i32 2
  store i64 0, i64* %_6890
  %_6889 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6887, i32 0, i32 1, i32 1
  store i64 0, i64* %_6889
  %_6888 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6887, i32 0, i32 1, i32 0
  store i64 0, i64* %_6888
  %_6892 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6871, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array6887, { i64, [0 x i64] }** %_6892
  %_raw_array6879 = call i64* @oat_alloc_array(i64 4)
  %_array6880 = bitcast i64* %_raw_array6879 to { i64, [0 x i64] }*
  %_6884 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6880, i32 0, i32 1, i32 3
  store i64 0, i64* %_6884
  %_6883 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6880, i32 0, i32 1, i32 2
  store i64 0, i64* %_6883
  %_6882 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6880, i32 0, i32 1, i32 1
  store i64 0, i64* %_6882
  %_6881 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6880, i32 0, i32 1, i32 0
  store i64 0, i64* %_6881
  %_6885 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6871, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array6880, { i64, [0 x i64] }** %_6885
  %_raw_array6872 = call i64* @oat_alloc_array(i64 4)
  %_array6873 = bitcast i64* %_raw_array6872 to { i64, [0 x i64] }*
  %_6877 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6873, i32 0, i32 1, i32 3
  store i64 0, i64* %_6877
  %_6876 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6873, i32 0, i32 1, i32 2
  store i64 0, i64* %_6876
  %_6875 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6873, i32 0, i32 1, i32 1
  store i64 0, i64* %_6875
  %_6874 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6873, i32 0, i32 1, i32 0
  store i64 0, i64* %_6874
  %_6878 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6871, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array6873, { i64, [0 x i64] }** %_6878
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array6871, { i64, [0 x { i64, [0 x i64] }*] }** %_6869
  store i64 0, i64* %_6900
  br label %_6903
_6903:
  %_6901 = load i64, i64* %_6900
  %_6902 = icmp slt i64 %_6901, 4
  br i1 %_6902, label %_6904, label %_6905
_6904:
  %_raw_array6906 = call i64* @oat_alloc_array(i64 4)
  %_array6907 = bitcast i64* %_raw_array6906 to { i64, [0 x i64] }*
  %_6909 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_6869
  %_6910 = load i64, i64* %_6900
  %_6908 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_6909, i32 0, i32 1, i64 %_6910
  store { i64, [0 x i64] }* %_array6907, { i64, [0 x i64] }** %_6908
  store i64 0, i64* %_6911
  br label %_6914
_6914:
  %_6912 = load i64, i64* %_6911
  %_6913 = icmp slt i64 %_6912, 4
  br i1 %_6913, label %_6915, label %_6916
_6915:
  %_6918 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_6838
  %_6919 = load i64, i64* %_6900
  %_6920 = load i64, i64* %_6911
  %_6917 = call i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %_6918, i64 %_6919, i64 %_6920)
  %_6922 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_6869
  %_6923 = load i64, i64* %_6900
  %_6924 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_6922, i32 0, i32 1, i64 %_6923
  %_6925 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6924
  %_6926 = load i64, i64* %_6911
  %_6921 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6925, i32 0, i32 1, i64 %_6926
  store i64 %_6917, i64* %_6921
  %_6927 = load i64, i64* %_6911
  %_6928 = add i64 %_6927, 1
  store i64 %_6928, i64* %_6911
  br label %_6914
_6916:
  %_6929 = load i64, i64* %_6900
  %_6930 = add i64 %_6929, 1
  store i64 %_6930, i64* %_6900
  br label %_6903
_6905:
  store i64 0, i64* %_6931
  br label %_6935
_6935:
  %_6932 = load i64, i64* %_6931
  %_6933 = load i64, i64* @len
  %_6934 = icmp slt i64 %_6932, %_6933
  br i1 %_6934, label %_6936, label %_6937
_6936:
  store i64 0, i64* %_6938
  br label %_6942
_6942:
  %_6939 = load i64, i64* %_6938
  %_6940 = load i64, i64* @len
  %_6941 = icmp slt i64 %_6939, %_6940
  br i1 %_6941, label %_6943, label %_6944
_6943:
  %_6946 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_6869
  %_6947 = load i64, i64* %_6931
  %_6948 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_6946, i32 0, i32 1, i64 %_6947
  %_6949 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6948
  %_6950 = load i64, i64* %_6938
  %_6951 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6949, i32 0, i32 1, i64 %_6950
  %_6952 = load i64, i64* %_6951
  call void @print_int(i64 %_6952)
  %_6953 = load i64, i64* %_6938
  %_6954 = add i64 %_6953, 1
  store i64 %_6954, i64* %_6938
  br label %_6942
_6944:
  %_6955 = load i64, i64* %_6931
  %_6956 = add i64 %_6955, 1
  store i64 %_6956, i64* %_6931
  br label %_6935
_6937:
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
