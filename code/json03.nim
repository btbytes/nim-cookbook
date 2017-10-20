import json

var field1, field2, field3 : string
var jz : JsonNode

jz = parseJson("""{"node1":"abc","node2":"def","node3":"hij"}""")

# In order to avoid a possible key not found [KeyError], one should use .hasKey
if jz.hasKey("node1"):
    field1 = jz["node1"].getStr

if jz.hasKey("node2"):
    field2 = jz["node2"].getStr

if jz.hasKey("node3"):
    field3 = jz["node3"].getStr

# Alternative way is {}
jz = parseJson("""{"node1":"abc","node3":"hij"}""")
field1 = jz{"node1"}.getStr
field2 = jz{"node2"}.getStr
field3 = jz{"node3"}.getStr
