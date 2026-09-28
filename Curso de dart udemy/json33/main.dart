import 'dart:convert';

import 'models/usuario.dart';

void main() {
  final String jsonData = '''
      [
      {"nome":"ricacio","idade":33,"email":"ricaciozz@gmail.com"},
      {"nome":"lucas","idade":26,"email":"lucas@gmail.com"},
      {"nome":"carmem","idade":45,"email":"carmem_jpe@hotmail.com"}
      ]
''';

  //? DECODE

  List<dynamic> parsedJson = jsonDecode(jsonData);

  //? Serialização

  ListUsuario listUsuario = ListUsuario.fromJson(lista: parsedJson);

  print('\nnome: ${listUsuario.usuarios.elementAt(0).nome}\n');

  Usuario usuario = Usuario.fromJson(
    map: {'nome': 'biza', 'idade': 45, 'email': 'biza@gmail.com'},
  );

  listUsuario.usuarios.add(usuario);

  listUsuario.usuarios.forEach((e) {
    print('nome:${e.nome}, idade:${e.idade}, email:${e.email}');
  });

  late List<dynamic> lista;
  lista = listUsuario.toJson();

  String toJson = jsonEncode(lista);

  print('\n toJson $toJson \n');
}
