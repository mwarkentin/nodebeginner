http = require 'http'
url = require 'url'

start = (route) ->
  handle = (request, response) ->
    pathname = url.parse(request.url).pathname
    console.log "Request for #{pathname} received."
    
    route pathname
    
    response.writeHead 200, {'Content-Type': 'text/html'}
    response.write 'Hello world.'
    response.end
    return
  
  http.createServer(handle).listen 8888
  console.log 'Server has started.'
  return
  
exports.start = start