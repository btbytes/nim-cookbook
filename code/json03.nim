import json

var field1, field2, field3: string
var data: JsonNode

data = parseJson("""{"node1":"abc","node2":"def","node3":"hij"}""")

# We should check if JSON has a field to avoid KeyError
if "node1" in data:
  field1 = data["node1"].getStr()

if "node1" in data:
  field2 = data["node2"].getStr()

if "node3" in data:
  field3 = data["node3"].getStr()

# Alternative way is {} - if key is not found, it will return default value
data = parseJson("""{"node1":"abc","node3":"hij"}""")
field1 = data{"node1"}.getStr()
field2 = data{"node2"}.getStr()
field3 = data{"node3"}.getStr()
