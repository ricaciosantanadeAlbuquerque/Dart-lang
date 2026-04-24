import 'dart:convert';
import 'dart:developer';

void main() => conversaoJsonObjeto();

void conversaoJsonObjeto() {
  String jsonData = '''

    [
      {"nome":"ricacio","idade":28,"email":"ricaciozz@gamil.com"},
      {"nome":"lucas","idade":26,"email":"lucas@gmail.com"},
      {"nome":"carmem","idade":24,"email":"carmem@gamil.com"}
    ]
  ''';

  //? DECODE

  List<dynamic> listJson = jsonDecode(jsonData);

  //? Serialização

  ListUsuario listaUsuario = new ListUsuario.fromJson(
    lista: listJson,
  ); // linha de instanciamento

  log(
    'Nome:${listaUsuario.listUsuarios[0].nome}, Idade: ${listaUsuario.listUsuarios[0].idade}, email:${listaUsuario.listUsuarios[0].email}',
  );

  //? ENCODE

  List<dynamic> lista = listaUsuario.tojson();
  String tojson = jsonEncode(lista);

  print('toJson ${tojson}');

}

class ListUsuario {
  List<Usuario> listUsuarios;

  ListUsuario({required this.listUsuarios});

  ListUsuario.fromJson({required List<dynamic> lista})
    : this(listUsuarios: lista.map((e) => Usuario.fromJson(map: e)).toList());

  List<dynamic> tojson() {
    return this.listUsuarios;
  }
}

class Usuario {
  String nome;
  int idade;
  String email;

  Usuario({required this.nome, required this.idade, required this.email});

  Usuario.fromJson({required Map<String, dynamic> map})
    : this(nome: map['nome'], idade: map['idade'], email: map['email']);

  Map<String, dynamic> toJson() {
    return {'nome': nome, 'idade': idade, 'email': email};
  }
}
