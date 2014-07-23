var variableServidor = require("http");

var laFuncionInicial = function(request, response){
	response.writeHead(200, {"Cotent-Type" : "text/json"});
	response.end('{ "id": 3582, "content": "Hello, Sistema Sideral!" }');
}

variableServidor.createServer(laFuncionInicial).listen(3000);

console.log("Escuchando en el puerto 3000");