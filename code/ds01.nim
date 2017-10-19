import os

var
  address : tuple[street: string, city: string, zipcode: int]
address = ("Royal Rd", "Kingville", 11234)
let s,c,z = address
echo s,c,z


let
  path = "/usr/local/bin/6m"
  dir, name, ext = splitFile(path)
echo dir
echo name
echo ext
