(function() {
  var route;
  route = function(resource) {
    return console.log("About to route a request for " + resource);
  };
  exports.route = route;
}).call(this);
