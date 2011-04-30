route = (handle, pathname) ->
  console.log "About to route a request for #{pathname}"
  if handle[pathname]?
    handle[pathname]()
  else
    console.log "No request handler found for #{pathname}"
  
  return
  
exports.route = route