import 'dart:convert';

void main() {
  //conversaoDireta();
  conversaoObjeto();
}

void conversaoDireta() {
  // Criando Json
  String json = '''

  {
  "nome":"Lucs",
  "idade":25,
  "salario":1867.50
  }

''';

  // decodificando JSON
  Map<String, dynamic> mapParsedJson = jsonDecode(json);
  print('mapParsedJson: $mapParsedJson');

  // serialização manual
  String nome = mapParsedJson['nome'];
  int idade = mapParsedJson['idade'];
  double salario = mapParsedJson['salario'];

  print('Nome:$nome, idade:$idade, salário:$salario');

  //ENCODE
  Map<String, dynamic> map = {'nome': nome, 'idade': idade, 'salario': salario};
  String toJson = jsonEncode(map);

  print('toJson: $toJson');
}

/**
 * json) uma String que envolve uma estrutura de dados sendo uma Map<> ou
 * uma lista de Map [{}]
 * jsonDecode() é uma função  que recebe o json, 
 * e desencapsula a estrutura de dados que há dentro da String(json), retornando 
 * essa estrutura de dados para quem ivoca a função jsonDecode(). 
 * 
 */

/**
 * jsonEncode(), precisa recebe como argumento, uma estrutura de dados. Sendo Map<>
 * ou uma lista de Map.
 * Se decodificamos de JSON para Map , então Encodamos de Map para JSON,
 * se decodificamos de json para uma lista então, encodamos de lista par json.
 */

void conversaoObjeto() {
  late String jsonData; // declarada

  // inicializada
  jsonData = ''' 
  [
  {"nome":"Ricacio","idade":28,"email":"ricaciozz@gmail.com"},
  {"nome":"Lucas","idade":26,"email":"lucas_jpe@hotmail.com"},
  {"nome":"Ana","idade":44,"email":"ana@gmail.com"}
  ]
''';

  // DECODE
  List<dynamic> jsonLista = jsonDecode(jsonData);
  print('jsonLista:$jsonLista');

  /// PASSANDO PARA OBJETO
  ListaUsuario listaUsuario = ListaUsuario.fromJson(listaJson: jsonLista);

  var usuario = listaUsuario.lista.elementAt(0);

  print(
    'Nome: ${usuario.nome}, idade: ${usuario.idade}, email: ${usuario.email}',
  );

  Usuario usuario02 = Usuario.fromJson({
    'nome': 'bia',
    'idade': 22,
    'email': 'bia@gmail.com',
  });

  listaUsuario.lista.add(usuario02);

  // ENCODE
  // de objeto para json

  List<dynamic> lista = listaUsuario.toJson();

  String toJson = jsonEncode(lista);

  print('toJson $toJson');
}

class ListaUsuario {
  List<Usuario> lista;

  ListaUsuario({required this.lista});

  factory ListaUsuario.fromJson({required List<dynamic> listaJson}) {
    return ListaUsuario(
      lista: listaJson.map((map) => Usuario.fromJson(map)).toList(),
    );
  }

  List<dynamic> toJson() => this.lista;
}

class Usuario {
  final String nome;
  final int idade;
  final String email;

  Usuario({required this.nome, required this.idade, required this.email});

  factory Usuario.fromJson(Map<String, dynamic> map) {
    // serialização
    return Usuario(nome: map['nome'], idade: map['idade'], email: map['email']);
  }

  Map<String, dynamic> toJson() {
    return {'nome': nome, 'idade': idade, 'email': email};
  }
}

/**
 *  se  o fromJson e de Map para objeto, então o toJson e de objeto para map
 *  recebemos uma map então  devolvemos um map
 */
