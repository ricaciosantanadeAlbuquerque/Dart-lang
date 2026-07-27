import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> main() async {
  try {
    await buscarCep(entradaDados());
  } on FormatException catch (e) {
    print(e.message);
  } catch (e) {
    print('Erro inesperado: $e');
  }
}

String entradaDados() {
  print('===================');
  print('  CONSULTA DE CEP   ');
  print('Digite o CEP (somente números)');

  final entrada = stdin.readLineSync()?.trim();

  if (entrada == null || entrada.isEmpty) {
    throw FormatException('O CEP não pode ser vazio.');
  }

  if (entrada.length != 8) {
    throw FormatException('O CEP deve possuir 8 dígitos');
  }

  if (int.tryParse(entrada) == null) {
    throw FormatException('O CEP deve conter apenas números');
  }

  return entrada;
}

Future<void> buscarCep(String cep) async {
  final Uri url = Uri.https('viacep.com.br', '/ws/$cep/json/');

  final response = await http.get(url);

  if (response.statusCode != 200) {
    throw FormatException(
      'ERRO ao consultar a API. status Code: ${response.statusCode}',
    );
  }

  Map<String, dynamic> parsedJson = jsonDecode(response.body);

  if (parsedJson['erro'] == true) {
    print('CEP não encontrado');
    return;
  }

  //? Serialização

  final endereco = Cep.fromJson(map: parsedJson);

  print(endereco);

  //? Encode

  print(jsonEncode(endereco.toJson()));
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

  const Cep({
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
