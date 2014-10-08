import 'dart:io';
import 'dart:convert';


main() {
  Socket.connect('127.0.0.1', 4041).then((socket) {
    print(socket.runtimeType);
    
    socket.write('Hello, World!');
    socket.listen((List<int> data) {
            print(UTF8.decode(data));
          });
  });
}