import json
let j = parseJson("""{"message": "THIS.IS.NIM!"}""")

echo j["message"]


# Read JSON from a file

let fruits = parseFile("fruits.json")

for fruit in fruits["fruits"]:
    echo  fruit
