import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

Future<void> main() async {
  await cep(cep: entradaCep());
}

String entradaCep() {
  while (true) {
    print('Olá seja Bem vindo ao consulta CEP');
    print('Por favor digite seu CEP');
    final String? entradaDados = stdin.readLineSync();

    if (entradaDados == null) {
      print('ERRO: Digite um CEP válido não NULO.');
      continue;
    }

    if (entradaDados.isEmpty) {
      print('ERRO: Digite um CEP válido e não vazio.');
      continue;
    }

    if (entradaDados.length != 8) {
      print('ERRO: Digite um CEP válido,\n');
      print('O CEP deve conter 8 digitos');
      continue;
    }

    if (int.tryParse(entradaDados) == null) {
      print('ERRO: CEP invalido, digite apenas números');
      continue;
    }

    return entradaDados;
  }
}

Future<void> cep({required String cep}) async {
  final Uri url = Uri.https('viacep.com.br', '/ws/01001000/json/');

  try {
    var response = await http.get(url);

    if (response.statusCode == 200) {
      //? DECODE
      Map<String, dynamic> parsedJson = jsonDecode(response.body);

      //? Serialização
      Cep cep = Cep.fromJson(parsedJson);
      print('Dados: $cep');

      //? ENCODE
      String toJson = jsonEncode(cep.toJson());
      print('Encode json\n');
      print('toJson: $toJson');
    } else {
      throw Exception('ERRO Status Code: ${response.statusCode}');
    }
  } catch (element) {
    print(element);
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
    final Map<String, dynamic> data = {};
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

  @override
  String toString() {
    return '''
    cep:$cep
    logradouro:$logradouro,
    complemento:$complemento,
    unidade:$unidade,
    bairro:$bairro,
    localidade:$localidade,
    uf:$uf,
    estado:$estado
    regiao:$regiao,
    ibge:$ibge,
    gia:$gia,
    ddd:$ddd,
    siafi:$siafi
       ''';
  }
}
