import httpclient
var client = newHttpClient()
var outFile = open("index.html", fmWrite)
outFile.write(client.getContent("http://nim-cookbook.btbytes.com"))
outFile.close()

# Note: the above would not handle any HTTP errors (404 etc.,)
