import 'dart:convert';

void main(List<String> rags) {
  // chamada a função
  //conversaoDireta();
  conversaoObjeto();
}

/**
 *  Perca de segurança de tipo, perca do autocomplite e de
 *  exceções em tempo de compilação
 */
void conversaoDireta() {
  print('Conversão json direta');

  String jsonData = '''

    {
      "nome":"ricacio","idade":28,"email":"ricaciozz@gmail.com"
    }

''';

  //? DECODE

  Map<String, dynamic> jsonMap = jsonDecode(jsonData);

  //? Serialização

  String nome = jsonMap['nome'];
  int idade = jsonMap['idade'];
  String email = jsonMap['email'];

  print('Nome: ${nome}, Idade: ${idade}, Email: ${email}');

  // ENCODE

  Map<String, dynamic> map = {'nome': nome, 'idade': idade, 'email': email};

  String toJson = jsonEncode(map);

  print('toJson $toJson');
}

void conversaoObjeto() {
  print('Conversao para objeto');

  String jsonData = '''
    [
    {"nome":"ricacio","idade":28,"email":"ricaciozz@gmail.com"},
    {"nome":"lucas","idade":26,"email":"ricaciozz@gmail.com"},
    {"nome":"carmem","idade":24,"email":"carmem@gmail.com"}
    ]
''';

  //? DECODE
  List<dynamic> listaJson = jsonDecode(jsonData);
  print('$listaJson');

  // linha de instanciamento
  ListaUsuario listaUsuario = new ListaUsuario.fromJson(listaJson: listaJson);

  var usuario = listaUsuario.listUsuarios.singleWhere(
    (e) => e.nome == 'ricacio',
  );

  print('Nome: ${usuario.nome}');

  Usuario usuario2 = new Usuario.fromJson(
    map: {'nome': 'joao', 'idade': 22, 'email': 'joaozz@gamil.com'},
  );
  print('');
  print('${usuario2.nome}');

  listaUsuario.listUsuarios.add(
    usuario2,
  ); // adicionando o Objeto usuario2 na lista de usuarios

  // ENCODE

  List<dynamic> lista = listaUsuario.toJson();
  String toJson = json.encode(lista);

  print('toJson ${toJson}');
}

class ListaUsuario {
  late List<Usuario> listUsuarios;

  ListaUsuario({required this.listUsuarios});

  ListaUsuario.fromJson({required List<dynamic> listaJson})
    : this(
        listUsuarios: listaJson.map((e) => Usuario.fromJson(map: e)).toList(),
      );

  List<dynamic> toJson() {
    return listUsuarios;
  }
}

class Usuario {
  late String nome;
  late int idade;
  late String email;

  Usuario({required this.nome, required this.idade, required this.email});

  Usuario.fromJson({required Map<String, dynamic> map})
    : this(nome: map['nome'], idade: map['idade'], email: map['email']);

  Map<String, dynamic> toJson() {
    return {'nome': nome, 'idade': idade, 'email': email};
  }
}
