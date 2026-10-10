import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

Future<void> main() async {
  await cep(cep: entradaDados());
}

String entradaDados() {
  while (true) {
    print('Olá por favor digite seu cep.\n');
    final String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print('ERRO: Cep inválido, por favor digite novamente.\n');
      continue;
    }

    if (int.tryParse(entrada) == null || entrada.length != 8) {
      print('ERRO: Cep inválido, por favor digite novamente.\n');
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
      Map<String, dynamic> parsedJson = jsonDecode(response.body);
      //? Serialização

      Cep cep = Cep.fromJson(map: parsedJson);

      print('$cep\n');

      //? Encode
      String toJson = jsonEncode(cep.toJson());

      print('\ntoJson:$toJson\n');
    } else {
      throw Exception('ERRO: StatusCode ${response.statusCode}');
    }
  } catch (e, s) {
    print('Exceção: $e');
    print('StackTrace:$s');
  }
}

class Cep {
  final String cep;
  final String logradouro;
  final String complemento;
  final String unidade;
  final String bairro;
  final String localidade;
  final String uf;
  final String estado;
  final String regiao;
  final String ibge;
  final String gia;
  final String ddd;
  final String siafi;

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

  String toString() {
    return '''
      cep: $cep,
      logradouro: $logradouro,
      complemento: $complemento,
      unidade: $unidade,
      bairro: $bairro,
      localidade: $localidade,
      uf: $uf,
      estado: $estado,
      regiao: $regiao,
      ibge: $ibge,
      gia: $gia,
      ddd: $ddd,
      siafi: $siafi,

    ''';
  }
}
