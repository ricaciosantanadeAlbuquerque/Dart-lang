import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

void main() {
  try {
    buscarCep(cep:entradaDados());
  } on FormatException catch (e) {
    print(e.message);
  } catch (e) {
    print('Erro inesperado');
  }
}

String entradaDados() {
  print('==============================');
  print('       CONSULTA DE CEP         ');
  print('Digite o CEP (somente números)');

  final entrada = stdin.readLineSync();

  if (entrada == null || entrada.isEmpty) {
    throw FormatException('O CEP não pode ser vazio');
  }

  if (entrada.length != 8) {
    throw FormatException('O CEP deve conter apenas números');
  }

  if (int.tryParse(entrada) == null) {
    throw FormatException('O CEP  deve conter apenas números');
  }

  return entrada;
}

Future<void> buscarCep({required String cep}) async {
  final url = Uri.https('viacep.com.br', '/ws/$cep/json/');

  final response = await http.get(url);

  if (response.statusCode != 200) {
    throw FormatException(
      'Erro ao consultar a API. status Code: ${response.statusCode}',
    );
  }

  //? DECODE

  final Map<String, dynamic> parsedJson = jsonDecode(response.body);

  if (parsedJson['erro'] == true) {
    print('CEP não encontrado');
    return;
  }

  //? Serialização

  final endereco = Cep.fromJson(parsedJson);
  print(endereco);

  //? ENcode

  print(jsonEncode(endereco.toJson()));
}

class Cep {
  final String? cep;
  final String? logradouro;
  final String? complemento;
  final String? unidade;
  final String? bairro;
  final String? localidade;
  final String? uf;
  final String? estado;
  final String? regiao;
  final String? ibge;
  final String? gia;
  final String? ddd;
  final String? siafi;

  const Cep({
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

  factory Cep.fromJson(Map<String, dynamic> json) {
    return Cep(
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
CEP.........: $cep
Logradouro..: $logradouro
Complemento.: $complemento
Unidade.....: $unidade
Bairro......: $bairro
Localidade..: $localidade
UF..........: $uf
Estado......: $estado
Região......: $regiao
IBGE........: $ibge
GIA.........: $gia
DDD.........: $ddd
SIAFI.......: $siafi
''';
  }
}
