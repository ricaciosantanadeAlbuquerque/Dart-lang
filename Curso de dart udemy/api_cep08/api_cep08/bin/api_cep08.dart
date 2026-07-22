import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

Future<void> main() async {
  await cep(cep: verificacaoNumerica(cep: entradaDados()));
}

String entradaDados() {
  late String cep;
  print('Olá seja bem vindo!');
  print('Por favor digite seu CEP');
  String? entradaDado = stdin.readLineSync();

  if (entradaDado != null && entradaDado.trim().isNotEmpty) {
    if (entradaDado.length == 8) {
      cep = entradaDado;
    } else {
      print('Digite um CEP válido.');
      exit(0);
    }
  } else {
    print('Digite um CEP válido.');
    exit(0);
  }

  return cep;
}

int verificacaoNumerica({required String cep}) {
  late int valorCep;
  try {
    valorCep = int.parse(cep);
  } catch (e, s) {
    print('O valor informado não é númerico. $e');
    print('stack Trace $s');
  }

  return valorCep;
}

Future<void> cep({required int cep}) async {
  final Uri url = Uri.https('viacep.com.br', '/ws/${cep.toString()}/json/');

  try {
    var response = await http.get(url);
    print('StatusCode ${response.statusCode}');
    if (response.statusCode == 200) {
      //? Decode
      Map<String, dynamic> parsedJson = jsonDecode(response.body);
      //? Serialização
      Cep cep = new Cep.fromJson(parsedJson);
      print('Logradouro: ${cep.logradouro}');
      //? Encode
      String toJson = jsonEncode(cep.toJson());
      print('toJson $toJson');
    } else {
      throw Exception('ERRO! statusCode:${response.statusCode}');
    }
  } catch (e, s) {
    print(e);
    print(s);
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cep'] = cep;
    data['logradouro'] = logradouro;
    data['complemento'] = complemento;
    data['unidade'] = unidade;
    data['bairro'] = bairro;
    data['localidade'] = localidade;
    data['uf'] = uf;
    data['estado'] = estado;
    data['regiao'] = regiao;
    data['ibge'] = ibge;
    data['gia'] = gia;
    data['ddd'] = ddd;
    data['siafi'] = siafi;
    return data;
  }
}
