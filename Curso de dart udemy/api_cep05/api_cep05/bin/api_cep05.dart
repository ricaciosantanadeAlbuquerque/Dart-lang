import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> main() async => cep(cep: entrada());

String entrada() {
  late String cep;

  print('Olá Seja bem vindo');
  print('Por favor digite  o seu cep');
  String? entradaDado = stdin.readLineSync();

  if (entradaDado != null && entradaDado.isNotEmpty) {
    if (entradaDado.length == 8) {
      cep = entradaDado;
    } else {
      print('ERRO ! digite um cep válido ');
      exit(0);
    }
  } else {
    print('ERRO ! digite um cep válido.');
    exit(0);
  }

  return cep;
}

void cep({required String cep}) async {
  final Uri url = Uri.https('viacep.com.br', '/ws/$cep/json/');

  try {
    var response = await http.get(url);
    if (response.statusCode == 200) {
      //? Decode
      Map<String, dynamic> parsedJson = jsonDecode(response.body);
      //? Serializacao
      Cep cep = Cep.fromJson(map: parsedJson);

      //? Endoce

      Map<String, dynamic> map = cep.toJson();
      String toJson = jsonEncode(map);

      print('toJson: $toJson');

      print('Logradouro: ${cep.logradouro}');
    } else {
      throw Exception('ERRO! statusCode: ${response.statusCode}');
    }
  } catch (e, stackTrace) {
    print('e');
    print(stackTrace);
  }
}

class Cep {
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

  Cep.fromJson({required Map<String, dynamic> map})
    : this(
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

  Map<String, dynamic> toJson() {
    return {
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
