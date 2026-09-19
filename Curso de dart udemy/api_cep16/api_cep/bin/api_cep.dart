import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> main() async {
  // print(entradaCep() is String);

  await cep(entradaCep());
}

String entradaCep() {
  late String value;

  print('Olá seja Bem vindo ao bucas CEP \n');
  print('Por favor digite seu CEP');

  String? entradaCep = stdin.readLineSync();

  if (entradaCep != null && entradaCep.isNotEmpty) {
    try {
      if (entradaCep.length == 8 && int.tryParse(entradaCep) is int) {
        value = entradaCep;
      } else {
        throw Exception('ERRO CEP inválido');
      }
    } catch (e) {
      print(e);
    }
  } else {
    throw Exception(' ERRO ! CEP inválido');
  }

  return value;
}

Future<void> cep(String cepValue) async {
  final Uri url = Uri.https('viacep.com.br', '/ws/$cepValue/json/');

  try {
    var response = await http.get(url);

    if (response.statusCode == 200) {
      //? DECODE
      Map<String, dynamic> parsedJson = jsonDecode(response.body);

      final  Cep novoCep = Cep.fromJson(parsedJson);

      //? Serialização
      print('Logradouro:${novoCep.logradouro}');

      //? ENCODE

      String toJson = jsonEncode(novoCep.toJson());

      print('toJson $toJson');

    } else {
      throw Exception('ERRO! Falha na API');
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
