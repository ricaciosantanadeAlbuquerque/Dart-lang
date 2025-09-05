import 'dart:convert';

void main() {
  //conversaoDireta();
  conversaoObjeto();
}

void conversaoDireta() {
  // JSON
  String json = '''
{
 "nome":"Ricacio",
 "idade":28,
 "email":"ricaciozz@gmail.com"
}
''';

  // DECODE

  Map<String, dynamic> parsedJson = jsonDecode(json);
  print('parsedJson: $parsedJson');
  // serialização

  String nome = parsedJson['nome'];
  int idade = parsedJson['idade'];
  String email = parsedJson['email'];

  print('USO DIRETO: nome: $nome, idade: $idade e-mail: $email');

  //    ENCODE

  Map<String, dynamic> map = {'nome': nome, 'idade': idade, 'email': email};

  String toJson = jsonEncode(map);

  print('toJson: $toJson');
}

conversaoObjeto() {
  String dataJson = '''
  [
    {"nome":"Ana","idade":22,"email":"ana@gmail.com"},
    {"nome":"ricacio","idade":32,"email":"ricacio@gmail.com"},
    {"nome":"lucas","idade":26,"email":"lucas@gmail.com"}
  ]
''';

  List<dynamic> listaJson = jsonDecode(dataJson);
  print('listJson:$listaJson');

  // DECODE
  ListaUsuario listaUsuario = new ListaUsuario.fromJson(listaJson); // objeto
  Usuario usuario = listaUsuario.listUsuario.elementAt(0);
  print(
    'USO: Nome: ${usuario.nome}, Idade: ${usuario.idade}, email: ${usuario.email}',
  );

  Usuario usuario02 = new Usuario.fromJson({
    'nome': 'marta',
    'idade': 43,
    'email': 'marta_jpe@hotmail.com',
  });

  listaUsuario.listUsuario.add(
    usuario02,
  ); // adicionando  usuário  novo da lista

  //ENCODE

  List<dynamic> listaResult = listaUsuario.toJson();
  String toJson = json.encode(listaResult);

  print('toJson: $toJson');
}

class ListaUsuario {
  final List<Usuario> listUsuario;

  ListaUsuario({required this.listUsuario});

  factory ListaUsuario.fromJson(List<dynamic> lista) {
    return ListaUsuario(
      listUsuario: lista.map((element) => Usuario.fromJson(element)).toList(),
    );
  }

  List<dynamic> toJson() => listUsuario;
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
}
