import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

void main() async {
  await cep(cep: entradaCep());
}

String entradaCep() {
  while (true) {
    print('Olá Seja bem-vindo ao Sistema de consultas de CEP');
    print('Para começar digite seu cep');
    String? entrada = stdin.readLineSync()?.trim();

    if (entrada == null || entrada.isEmpty) {
      print('ERRO: Cep não pode estar vazio.\n');
      continue;
    }

    if (entrada.length != 8) {
      print('ERRO: O Cep deve conter exatamente 8 digitos.\n');
      continue;
    }

    if (int.tryParse(entrada) == null) {
      print('ERRO: O Cep deve conter apenas números.\n');
      continue;
    }

    return entrada;
  }
}

Future<void> cep({required String cep}) async {
  final Uri url = Uri.https('viacep.com.br', '/ws/$cep/json/');

  try {
    var response = await http.get(url);

    if (response.statusCode == 200) {
      //? DECODE
      Map<String, dynamic> parsedJson =
          jsonDecode(response.body) as Map<String, dynamic>;

      if (parsedJson['erro'] == true) {
        print('CEP não  encontrado.');
        return;
      }

      //? SERIALIZAÇAO

      Cep newCep = Cep.fromJson(map: parsedJson);
      print(newCep);
      //? ENCODE

      String toJson = jsonEncode(newCep.toJson());

      print('toJson: $toJson');
    } else {
      throw FormatException('ERRO StatusCode: ${response.statusCode}');
    }
  } catch (e, s) {
    print(e);
    print(s);
  }
}

/**
 * {
  "cep": "01001-000",
  "logradouro": "Praça da Sé",
  "complemento": "lado ímpar",
  "unidade": "",
  "bairro": "Sé",
  "localidade": "São Paulo",
  "uf": "SP",
  "estado": "São Paulo",
  "regiao": "Sudeste",
  "ibge": "3550308",
  "gia": "1004",
  "ddd": "11",
  "siafi": "7107"
}
 */

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

  @override
  String toString() {
    return '''
    cep:$cep,
    logradouro:$logradouro,
    complemento:$complemento,
    unidade:$unidade,
    bairro:$bairro,
    localidade:$localidade,
    uf:$uf,
    estado:$estado,
    região:$regiao,
    ibge:$ibge,
    gia:$gia,
    ddd:$ddd,
    siafi:$siafi
    ''';
  }
}
