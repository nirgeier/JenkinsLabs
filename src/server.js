//
// server.js
//
require("http")
  .createServer((request, response) => {
    response.write(`Response from server....`);
    response.end(`\n`);
  })
  // Set the default port to 5000
  .listen(process.env.PORT || 5000 );