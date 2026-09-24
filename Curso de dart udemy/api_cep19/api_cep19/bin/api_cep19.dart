import 'dart:io';

import 'package:http/http.dart' as http;

import 'dart:convert' as convert;

 Future<void> main()async{
  await cep(cep: entradaCep());
}

String entradaCep() {
  while (true) {
    print('Olá seja Bem-vindo ao consultar CEP!');
    print('Por favor digite seu CEP');
    final String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print('ERRO! o Cep não pode ser nulo ou vazio.\n');
      continue;
    }

    if (entrada.length != 8) {
      print('ERRO: O Cep deve conter 8 caracteres.\n');
      continue;
    }

    if (int.tryParse(entrada) == null) {
      print('ERRO: O cep deve conter apenas números.\n');
      continue;
    }

    return entrada;
  }
}

//?=============================================================================

Future<void> cep({required String cep}) async {
  final Uri url = Uri.https('viacep.com.br', '/ws/$cep/json/');

  try {
    var response = await http.get(url);

    if (response.statusCode == 200) {
      //? Decode
      var parsedJson =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      //? Serialização
      Cep cep = Cep.fromJson(parsedJson);

      print('$cep\n');

      //? Encode

      String toJosn = convert.jsonEncode(cep.toJson());

      print('toJson: $toJosn\n');
    } else {
      throw Exception('ERRO! statusCode ${response.statusCode}');
    }
  } catch (e, s) {
    print('Exceção:$e');
    print('StackTrace:$s');
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

  Cep.fromJson(Map<String, dynamic> json) {
    cep = json['cep'];
    logradouro = json['logradouro'];
    complemento = json['complemento'];
    unidade = json['unidade'];
    bairro = json['bairro'];
    localidade = json['localidade'];
    uf = json['uf'];
    estado = json['estado'];
    regiao = json['regiao'];
    ibge = json['ibge'];
    gia = json['gia'];
    ddd = json['ddd'];
    siafi = json['siafi'];
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
      siafi: $siafi
  ''';
  }
}
