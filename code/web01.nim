import httpclient
var client = newHttpClient()
var outFile = open("index.html", fmWrite)
for line in  client.getContent("http://nim-cookbook.btbytes.com"):
  outFile.write(line)
outFile.close()