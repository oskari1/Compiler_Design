; generated from: oatprograms/regalloctest2.oat
target triple = "x86_64-unknown-linux"
define i64 @foo(i64 %x, i64 %y, i64 %z) {
  %_1978 = alloca i64
  store i64 %x, i64* %_1978
  %_1979 = alloca i64
  store i64 %y, i64* %_1979
  %_1980 = alloca i64
  store i64 %z, i64* %_1980
  %_1981 = alloca i64
  %_1985 = alloca i64
  %_1982 = load i64, i64* %_1978
  %_1983 = load i64, i64* %_1979
  %_1984 = add i64 %_1982, %_1983
  store i64 %_1984, i64* %_1981
  %_1986 = load i64, i64* %_1979
  %_1987 = load i64, i64* %_1980
  %_1988 = add i64 %_1986, %_1987
  store i64 %_1988, i64* %_1985
  %_1989 = load i64, i64* %_1981
  %_1990 = load i64, i64* %_1985
  %_1991 = add i64 %_1989, %_1990
  ret i64 %_1991
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1879 = alloca i64
  store i64 %argc, i64* %_1879
  %_1880 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1880
  %_1881 = alloca i64
  %_1882 = alloca i64
  %_1888 = alloca i64
  %_1889 = alloca i64
  %_1893 = alloca i64
  %_1897 = alloca i64
  %_1907 = alloca i64
  %_1911 = alloca i64
  %_1915 = alloca i64
  %_1919 = alloca i64
  %_1923 = alloca i64
  %_1933 = alloca i64
  %_1937 = alloca i64
  %_1941 = alloca i64
  %_1945 = alloca i64
  %_1955 = alloca i64
  %_1959 = alloca i64
  %_1963 = alloca i64
  %_1967 = alloca i64
  store i64 0, i64* %_1881
  store i64 0, i64* %_1882
  br label %_1885
_1885:
  %_1883 = load i64, i64* %_1882
  %_1884 = icmp slt i64 %_1883, 10000000
  br i1 %_1884, label %_1886, label %_1887
_1886:
  store i64 0, i64* %_1888
  %_1890 = load i64, i64* %_1888
  %_1891 = load i64, i64* %_1882
  %_1892 = add i64 %_1890, %_1891
  store i64 %_1892, i64* %_1889
  %_1894 = load i64, i64* %_1889
  %_1895 = load i64, i64* %_1882
  %_1896 = add i64 %_1894, %_1895
  store i64 %_1896, i64* %_1893
  %_1898 = load i64, i64* %_1893
  %_1899 = load i64, i64* %_1882
  %_1900 = add i64 %_1898, %_1899
  store i64 %_1900, i64* %_1897
  %_1901 = load i64, i64* %_1897
  %_1903 = load i64, i64* %_1888
  %_1904 = load i64, i64* %_1889
  %_1905 = load i64, i64* %_1893
  %_1902 = call i64 @foo(i64 %_1903, i64 %_1904, i64 %_1905)
  %_1906 = add i64 %_1901, %_1902
  store i64 %_1906, i64* %_1897
  %_1908 = load i64, i64* %_1897
  %_1909 = load i64, i64* %_1882
  %_1910 = add i64 %_1908, %_1909
  store i64 %_1910, i64* %_1907
  %_1912 = load i64, i64* %_1907
  %_1913 = load i64, i64* %_1882
  %_1914 = add i64 %_1912, %_1913
  store i64 %_1914, i64* %_1911
  %_1916 = load i64, i64* %_1911
  %_1917 = load i64, i64* %_1882
  %_1918 = add i64 %_1916, %_1917
  store i64 %_1918, i64* %_1915
  %_1920 = load i64, i64* %_1915
  %_1921 = load i64, i64* %_1882
  %_1922 = add i64 %_1920, %_1921
  store i64 %_1922, i64* %_1919
  %_1924 = load i64, i64* %_1919
  %_1925 = load i64, i64* %_1882
  %_1926 = add i64 %_1924, %_1925
  store i64 %_1926, i64* %_1923
  %_1927 = load i64, i64* %_1923
  %_1929 = load i64, i64* %_1911
  %_1930 = load i64, i64* %_1915
  %_1931 = load i64, i64* %_1919
  %_1928 = call i64 @foo(i64 %_1929, i64 %_1930, i64 %_1931)
  %_1932 = add i64 %_1927, %_1928
  store i64 %_1932, i64* %_1923
  %_1934 = load i64, i64* %_1923
  %_1935 = load i64, i64* %_1882
  %_1936 = add i64 %_1934, %_1935
  store i64 %_1936, i64* %_1933
  %_1938 = load i64, i64* %_1933
  %_1939 = load i64, i64* %_1882
  %_1940 = add i64 %_1938, %_1939
  store i64 %_1940, i64* %_1937
  %_1942 = load i64, i64* %_1937
  %_1943 = load i64, i64* %_1882
  %_1944 = add i64 %_1942, %_1943
  store i64 %_1944, i64* %_1941
  %_1946 = load i64, i64* %_1941
  %_1947 = load i64, i64* %_1882
  %_1948 = add i64 %_1946, %_1947
  store i64 %_1948, i64* %_1945
  %_1949 = load i64, i64* %_1945
  %_1951 = load i64, i64* %_1933
  %_1952 = load i64, i64* %_1937
  %_1953 = load i64, i64* %_1941
  %_1950 = call i64 @foo(i64 %_1951, i64 %_1952, i64 %_1953)
  %_1954 = add i64 %_1949, %_1950
  store i64 %_1954, i64* %_1945
  %_1956 = load i64, i64* %_1945
  %_1957 = load i64, i64* %_1882
  %_1958 = add i64 %_1956, %_1957
  store i64 %_1958, i64* %_1955
  %_1960 = load i64, i64* %_1955
  %_1961 = load i64, i64* %_1882
  %_1962 = add i64 %_1960, %_1961
  store i64 %_1962, i64* %_1959
  %_1964 = load i64, i64* %_1959
  %_1965 = load i64, i64* %_1882
  %_1966 = add i64 %_1964, %_1965
  store i64 %_1966, i64* %_1963
  %_1968 = load i64, i64* %_1963
  %_1969 = load i64, i64* %_1882
  %_1970 = add i64 %_1968, %_1969
  store i64 %_1970, i64* %_1967
  %_1971 = load i64, i64* %_1881
  %_1972 = load i64, i64* %_1967
  %_1973 = add i64 %_1971, %_1972
  store i64 %_1973, i64* %_1881
  %_1974 = load i64, i64* %_1882
  %_1975 = add i64 %_1974, 1
  store i64 %_1975, i64* %_1882
  br label %_1885
_1887:
  %_1977 = load i64, i64* %_1881
  call void @print_int(i64 %_1977)
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
