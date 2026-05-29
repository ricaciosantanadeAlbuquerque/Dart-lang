import 'dart:io';

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future<void> main(List<String> args) async {
  await cepApi(cep: entradaCep());
}

int entradaCep() {
  late int resultCep;
  print('\n===========Menu==========\n');
  print('Digite seu Cep por favor !');
  String? entrada = stdin.readLineSync();

  if (entrada != null && entrada.isNotEmpty) {
    int cep = int.tryParse(entrada) ?? 0;
    resultCep = cep;
  } else {
    print('ERRO ! digite um valor válido.');
    exit(0);
  }
  return resultCep;
}

// =============================================================================
Future<void> cepApi({required int cep}) async {
  Uri url = Uri.https(
    'viacep.com.br',
    '/ws/${cep.toString()}/json/',
  ); // construtor nomeado, linha de instanciamento.

  try {
    var response = await http.get(url);

    if (response.statusCode == 200) {
      //? DECODE
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      //? serializacao para objeto

      Cep cep = Cep.fromJson(map: jsonResponse);

      print('Bairro: ${cep.bairro}, logradouro: ${cep.logradouro}');

      //? ENCODE
      Map<String, dynamic> map = cep.toJson();
      String toJson = convert.jsonEncode(map);
      print('toJson: $toJson');
    } else {
      throw Exception('ERRO! ao tentar consultar CEP: ${response.statusCode}');
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
