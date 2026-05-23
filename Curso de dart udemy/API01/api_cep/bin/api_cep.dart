import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  var url = Uri.https('viacep.com.br', '/ws/58038680/json/');

  try {
    var response = await http.get(url);

    if (response.statusCode == 200) {
      //? DECODE
      Map<String, dynamic> parsedJson = jsonDecode(response.body);
      //? Serialização
      Cep cep = Cep.fromJson(map: parsedJson);

      print('logradouro: ${cep.logradouro}, bairro: ${cep.bairro}');

      //? ENCODE

      Map<String, dynamic> map = cep.toJson();
      String tojson = jsonEncode(map);

      print('toJson: $tojson');
      
    } else {
      throw Exception(
        'Erro ao obter o CEP:\n STATUS CODE ${response.statusCode}',
      );
    }
  } catch (e) {
    print(e);
  }
  
}

class Cep {
  String cep;
  String logradouro;
  String complemento;
  String unidade;
  String bairro;
  String localidade;
  String uf;
  String estado;
  String regiao;
  String ibge;
  String gia;
  String ddd;
  String siafi;

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
