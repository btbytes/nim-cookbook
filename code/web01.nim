import httpclient

let client = newHttpClient()
writeFile("index.html", client.getContent("http://nim-cookbook.btbytes.com"))

# Note: the above would not handle any HTTP or IO errors
