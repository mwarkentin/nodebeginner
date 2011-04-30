(function() {
  var route;
  route = function(handle, pathname) {
    console.log("About to route a request for " + pathname);
    if (handle[pathname] != null) {
      handle[pathname]();
    } else {
      console.log("No request handler found for " + pathname);
    }
    return;
  };
  exports.route = route;
}).call(this);
