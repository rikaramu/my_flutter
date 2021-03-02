import 'dart:io';
import 'package:http_server/http_server.dart';

Future main() async {
  var staticFiles = VirtualDirectory('.');
  staticFiles.allowDirectoryListing = true; /*1*/
  staticFiles.directoryHandler = (dir, request) /*2*/ {
    var indexUri = Uri.file(dir.path).resolve('index.html');
    staticFiles.serveFile(File(indexUri.toFilePath()), request); /*3*/
  };

  var server = await HttpServer.bind(InternetAddress.loopbackIPv4, 8080);
  print('Listening on port 8080');
  await server.forEach(staticFiles.serveRequest); /*4*/
}