import 'dart:convert';


/**
 *  Rest Conceito
 *  - Representacional State Transfer (Transfrência repesentacional de estado)
 *  - É uma arquitetura que define um conjunto de restrições na criação de web services.
 *  - È uma padronização para multiplas aplicações possam se comunicar usando protocolo HTTP.
 */

// * SERIALIZAÇÃO MANUAL -  biblioteca JSON integrada ao dart 'dart:convert'

// * Serialização JSON direta

//  - perde recursos estático da linguagem:
//  segurança de tipo, auto completar e exceção de tempo de compilação

void main(List<String> args) {
  //conversaoDireta();
  conversaoObjeto();
}

void conversaoDireta() {
  print('JSON Conversão Direta');

  String json =
      ''' {"nome":"Ricacio","idade":32,"email":"ricaciozz@gmail.com"}''';

  // Decode

  Map<String, dynamic> map = jsonDecode(json);
  // serialização manual
  print('JSON ${map}');

  String nome = map['nome'];
  int idade = map['idade'];
  String email = map['email'];
  print('Nome:$nome, Idade:$idade, Email: $email');

  // Encode
  Map<String, dynamic> mapEncode = {
    'nome': nome,
    'idade': idade,
    'email': email,
  };

  String toJson = jsonEncode(mapEncode);

  print('Json Encode $toJson');
}

void conversaoObjeto() {
  String jsonData = '''
  [

  {"nome":"ricacio","idade":32,"email":"ricaciozz@gmail.com"},
  {"nome":"lucas","idade":26,"email":"lucas@gmail.com"},
  {"nome":"marcos","idade":23,"email":"marcos@gmail.com"}

  ]
  ''';
  // Decode
  List<dynamic> listaJson = jsonDecode(jsonData);

  ListaUsuario listaUsuario = ListaUsuario.fromJson(listaJson);
  print(
    'Nome: ${listaUsuario.listaUsuario.elementAt(0).nome},idade:${listaUsuario.listaUsuario[0].idade}, email: ${listaUsuario.listaUsuario.elementAt(0).email}',
  );

  var usuario = listaUsuario.listaUsuario.singleWhere(
    (e) => e.nome == 'ricacio',
  );

  print(
    'nome:${usuario.nome}, idade: ${usuario.idade}, email: ${usuario.email}',
  );

  Usuario usuario01 = new Usuario.fromJson(
    map: {"nome": "marta", "idade": 25, "email": "marta@gmail.com"},
  );

  listaUsuario.listaUsuario.addAll([usuario01]);

  // Encode

  List<dynamic> lista = listaUsuario.toJson();
  String toJson = jsonEncode(lista);

  print('Encode json $toJson');
}

class ListaUsuario {
  final List<Usuario> listaUsuario;

  ListaUsuario({required this.listaUsuario});

  factory ListaUsuario.fromJson(List<dynamic> lista) {
    return ListaUsuario(
      listaUsuario: lista.map((e) => Usuario.fromJson(map: e)).toList(),
    );
  }

  List<dynamic> toJson() => listaUsuario;
}

class Usuario {
  final String nome;
  final int idade;
  final String email;

  Usuario({required this.nome, required this.idade, required this.email});

  factory Usuario.fromJson({required Map<String, dynamic> map}) {
    return Usuario(nome: map['nome'], idade: map['idade'], email: map['email']);
  }

  Map<String, dynamic> toJson() {
    return {"nome": nome, "idade": idade, "email": email};
  }
}
