import strutils
var aString = "    May had a little lamb    "
echo "Original string (", aString, ")"

var strBoth = strip(aString)
echo "Whitespace stripped at both ends (", strBoth, ")"

var str2 = strip(aString, leading=false)
echo "Trailing whitespace stripped: (", str2, ")"

var str3 = strip(aString, trailing=false)
echo "Leading whitespace stripped: (", str3, ")"


var str4 = "(* a comment (*-*) string in OCaml *)"
echo str4
echo strip(str4, chars={'(', '*', ')'})