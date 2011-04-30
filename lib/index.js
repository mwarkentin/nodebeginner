(function() {
  var router, server;
  server = require('./server');
  router = require('./router');
  server.start(router.route);
}).call(this);
