import 'dart:convert';
import 'dart:developer';

void main() {
  //conversaoDireta();
  conversaoObjeto();
}

void conversaoDireta() {
  String json = '''
    {
    "nome":"ricacio",
    "idade":28,
    "email":"ricaciozz@gmail.com"
    }
''';

  /// Decode

  Map<String, dynamic> jsonMap = jsonDecode(json);

  print('Map ${jsonMap}');

  String nome = jsonMap['nome'];
  int idade = jsonMap['idade'];
  String email = jsonMap['email'];

  print('nome $nome,idade $idade, email $email');

  /// DECODE

  Map<String, dynamic> map = {'nome': nome, 'idade': idade, 'email': email};

  String toJson = jsonEncode(map);

  print('ToJson $toJson');
}

void conversaoObjeto() {
  String jsonData = '''
  [
  {"nome":"ricacio","idade":28,"email":"ricaciozz@gmail.com"},
  {"nome":"Lucas","idade":27,"email":"lucas@gmail.com"},
  {"nome":"Carmem","idade":29,"email":"carmem@gmail.com"}
  ]
''';

  /// Encode
  List<dynamic> listJson = jsonDecode(jsonData);
  ListaUsuario listaUsuario = ListaUsuario.fromJson(listJson: listJson);

  print(
    'nome:${listaUsuario.usuarios.elementAt(0).nome}, idade:${listaUsuario.usuarios[0].idade}, email:${listaUsuario.usuarios.elementAt(0).email}',
  );

  Usuario usuario = Usuario.fromJson({
    'nome': 'Carlos',
    'idade': 30,
    'email': 'carlos@gamil.com',
  });

  listaUsuario.usuarios.add(usuario);

  // filtragem única
  Usuario resultBusca = listaUsuario.usuarios.singleWhere(
    (e) => e.nome == 'Carlos',
  );

  print(
    'Resultado da busca ${resultBusca.nome}, idade:${resultBusca.idade}, email:${resultBusca.email}',
  );

  // ENCODE

  List<dynamic> lista = listaUsuario.toJson();
  String toJson = jsonEncode(lista);
  print('');
  print('toJson ${toJson}');
}

class ListaUsuario {
  final List<Usuario> usuarios;

  ListaUsuario({required this.usuarios});

  factory ListaUsuario.fromJson({required List<dynamic> listJson}) {
    return ListaUsuario(
      usuarios: listJson.map((json) => Usuario.fromJson(json)).toList(),
    );
  }

  List<dynamic> toJson() => this.usuarios;

  @override
  String toString() => '$usuarios';
}

class Usuario {
  final String nome;
  final int idade;
  final String email;

  Usuario({required this.nome, required this.idade, required this.email});

  factory Usuario.fromJson(Map<String, dynamic> map) {
    return Usuario(nome: map['nome'], idade: map['idade'], email: map['email']);
  }

  Map<String, dynamic> toJson() {
    return {'nome': nome, 'idade': idade, 'email': email};
  }

  @override
  String toString() {
    return 'nome:$nome, idade: $idade, email:$email';
  }
}
