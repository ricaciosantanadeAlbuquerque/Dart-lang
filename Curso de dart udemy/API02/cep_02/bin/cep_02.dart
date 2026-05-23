import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  var url = Uri.https('viacep.com.br', '/ws/01001000/json/');
  try {
    var response = await http.get(url);

    if (response.statusCode == 200) {
      //? DECODE
      Map<String, dynamic> parsedJson = jsonDecode(response.body);

      //? Serialização

      Cep cep = Cep.fromJson(parsedJson);

      print('Logradouro: ${cep.logradouro}, bairro: ${cep.bairro}');

      //? ENCODE

      Map<String, dynamic> map = cep.toJson();
      String toJson = jsonEncode(map);
      print('toJson: $toJson');
    } else {
      throw Exception('Requisição falhou, status code ${response.statusCode}');
    }
  } catch (e) {
    print(e);
  }
}

class Cep {
  String? cep;
  String? logradouro;
  String? complemento;
  String? unidade;
  String? bairro;
  String? localidade;
  String? uf;
  String? estado;
  String? regiao;
  String? ibge;
  String? gia;
  String? ddd;
  String? siafi;

  Cep({
    this.cep,
    this.logradouro,
    this.complemento,
    this.unidade,
    this.bairro,
    this.localidade,
    this.uf,
    this.estado,
    this.regiao,
    this.ibge,
    this.gia,
    this.ddd,
    this.siafi,
  });

  Cep.fromJson(Map<String, dynamic> json)
    : this(
        cep: json['cep'],
        logradouro: json['logradouro'],
        complemento: json['complemento'],
        unidade: json['unidade'],
        bairro: json['bairro'],
        localidade: json['localidade'],
        uf: json['uf'],
        estado: json['estado'],
        regiao: json['regiao'],
        ibge: json['ibge'],
        gia: json['gia'],
        ddd: json['ddd'],
        siafi: json['siafi'],
      );

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
