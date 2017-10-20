import strutils

var
  str1 = "lower"
  str2 = "UPPER"
  str3 = "MiXeD"

echo str1.toUpperAscii()
echo str3.toUpperAscii()

echo str2.toLowerAscii()
echo str3.toLowerAscii()

echo str1.capitalizeAscii()
echo str3.capitalizeAscii()
echo str3.toLowerAscii().capitalizeAscii()
