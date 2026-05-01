/**
Criar classe Usuario
Fazer fromJson e toJson
Imprimir nome e idade
 */

import 'dart:convert';

void main() {
  String jsonData = '''
  {
  "nome": "Carlos",
  "idade": 28,
  "ativo": true
  }
''';
  //? DECODE
  /**
   *  De json para Objeto Map()
   */
  Map<String, dynamic> parsedJson = jsonDecode(jsonData);
  print('parsedJson: ${parsedJson}');

  //? Serialização

  // linha de instânciação
  Usuario usuario = new Usuario.fromJon(map: parsedJson);
  print('Nome: ${usuario.nome}');

  //? ENCODE

  Map<String, dynamic> map = usuario.toJson();
  String toJson = jsonEncode(map);

  print('toJSon ${toJson}');
}

class Usuario {
  String nome;
  int idade;
  bool ativo;

  Usuario({required this.nome, required this.idade, required this.ativo});

  factory Usuario.fromJon({required Map<String, dynamic> map}) {
    return Usuario(nome: map['nome'], idade: map['idade'], ativo: map['ativo']);
  }

  Map<String, dynamic> toJson() {
    return {'nome': nome, 'idade': idade, 'ativo': ativo};
  }
}
