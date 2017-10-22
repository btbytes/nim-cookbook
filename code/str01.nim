import strutils
let aString = "    May had a little lamb    "
echo "Original string (", aString, ")"

let strBoth = strip(aString)
echo "Whitespace stripped at both ends (", strBoth, ")"

let str2 = strip(aString, leading=false)
echo "Trailing whitespace stripped: (", str2, ")"

let str3 = strip(aString, trailing=false)
echo "Leading whitespace stripped: (", str3, ")"


let str4 = "(* a comment (*-*) string in OCaml *)"
echo str4
echo strip(str4, chars={'(', '*', ')'})
