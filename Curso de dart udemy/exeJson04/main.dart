import 'dart:convert';

void main() {
  String jsonData = '''
{
  "nome": "João",
  "endereco": {
    "rua": "Rua A",
    "numero": 123
  }
}

''';
  //? DECODE
  Map<String, dynamic> parsedJson = jsonDecode(jsonData);
  //? Serialização
  Pessoa pessoa = Pessoa.fromjson(map: parsedJson);

  print('rua: ${pessoa.endereco.rua}');

}

/**
 * Criar Pessoa e Endereco
Acessar rua
 */

class Pessoa {
  String nome;
  Endereco endereco;

  Pessoa({required this.nome, required this.endereco});

  Pessoa.fromjson({required Map<String, dynamic> map})
    : this(nome: map['nome'], endereco: Endereco.fromJson(map: map['endereco']));

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'endereco': endereco};
  }
}

class Endereco {
  String rua;
  int numero;

  Endereco({required this.rua, required this.numero});

  factory Endereco.fromJson({required Map<String, dynamic> map}) {
    return Endereco(rua: map['rua'], numero: map['numero']);
  }

  Map<String, dynamic> toJson() {
    return {'rua': rua, 'numero': numero};
  }
  
}
