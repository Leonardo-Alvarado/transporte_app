import 'dart:io';

void main() async {
  // Configura el servidor HTTP para escuchar en el puerto 8080
  var server = await HttpServer.bind(InternetAddress.loopbackIPv4, 8080);
  print('Servidor corriendo en http://localhost:8080');

  // Maneja las solicitudes entrantes
  await for (HttpRequest request in server) {
    // Responde a las solicitudes GET
    if (request.uri.path == '/hello') {
      request.response
        ..statusCode = HttpStatus.ok
        ..headers.contentType = ContentType.text
        ..write('Hola, mundo! Esta es una respuesta desde el backend.')
        ..close();
    } else {
      // Si la ruta no es /hello, responde con un 404
      request.response
        ..statusCode = HttpStatus.notFound
        ..headers.contentType = ContentType.text
        ..write('Ruta no encontrada')
        ..close();
    }
  }
}
