let address = ("Royal Rd", "Kingville", 11234)
let (s,c,z) = address
echo s
echo c
echo z


import os
let
  path = "/usr/local/bin/6m"
  (dir, name, ext) = splitFile(path)
echo dir
echo name
echo ext
