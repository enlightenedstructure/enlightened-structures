require('newrelic');
port = process.env.PORT || 9000;
console.log("---> Starting Harp on port " + port);
require('harp').server(__dirname + '/src', { port: port });
