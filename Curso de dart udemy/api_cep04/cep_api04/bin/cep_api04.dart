import 'dart:convert';

import 'package:http/http.dart' as http;

Future<void> main(List<String> args) async {
  await cep();
}

Future<void> cep() async {
  final Uri url = Uri.https('viacep.com.br', '/ws/01001000/json/');

  try {
    var response = await http.get(url);
    if (response.statusCode == 200) {
      //? Decode
      Map<String, dynamic> parsedJson = jsonDecode(response.body);
      //? Serialização
      Cep cep = new Cep.fromJson(map: parsedJson);

      print('Logradouro: ${cep.logradouro}');

      //? Encode
      String toJson = jsonEncode(cep.toJson());

      print(toJson);

    } else {
      throw Exception('ERRO !!!  Status Code ${response.statusCode}');
    }
  } catch (e) {
    print(e);
  }
}

class Cep {
  //? Atributos de classe
  late String cep;
  late String logradouro;
  late String complemento;
  late String unidade;
  late String bairro;
  late String localidade;
  late String uf;
  late String estado;
  late String regiao;
  late String ibge;
  late String gia;
  late String ddd;
  late String siafi;
  //? Construtor padrão
  Cep({
    required this.cep,
    required this.logradouro,
    required this.complemento,
    required this.unidade,
    required this.bairro,
    required this.localidade,
    required this.uf,
    required this.estado,
    required this.regiao,
    required this.ibge,
    required this.gia,
    required this.ddd,
    required this.siafi,
  });

  //? Construtor factory e Nomeado
  factory Cep.fromJson({required Map<String, dynamic> map}) {
    return Cep(
      cep: map['cep'],
      logradouro: map['logradouro'],
      complemento: map['complemento'],
      unidade: map['unidade'],
      bairro: map['bairro'],
      localidade: map['localidade'],
      uf: map['uf'],
      estado: map['estado'],
      regiao: map['regiao'],
      ibge: map['ibge'],
      gia: map['gia'],
      ddd: map['ddd'],
      siafi: map['siafi'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'cep': cep,
      'logradouro': logradouro,
      'complemento': complemento,
      'unidade': unidade,
      'bairro': bairro,
      'localidade': localidade,
      'uf': uf,
      'estado': estado,
      'regiao': regiao,
      'ibge': ibge,
      'gia': gia,
      'ddd': ddd,
      'siafi': siafi,
    };
  }
}
