import tables
import strutils

let characters = {"Bojack": "Horse", "Princess": "Cat", "Todd": "Human"}.toTable
for name, animal in characters:
    echo "$1 is a $2" % [name, animal]
