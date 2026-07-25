import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> main() async {
  try {
    final cepInformado = entradaDados();
    print(cepInformado);
    await buscarCep(cepInformado);
  } on FormatException catch (e) {
    print(e.message);
  } catch (e) {
    print('Erro inesperado: $e');
  }
}

String entradaDados() {
  print('=======================');
  print('     CONSULTA DE CEP    ');
  print('Digite o Cep (somente números)');

  final entrada = stdin.readLineSync()?.trim();

  if (entrada == null || entrada.isEmpty) {
    throw FormatException('O CEP não pode ser vazio');
  }

  if (entrada.length != 8) {
    throw FormatException('O CEP deve possui 8 digitos');
  }

  if (int.tryParse(entrada) == null) {
    throw FormatException('O CEP deve conter apenas números');
  }

  return entrada;
}

Future<void> buscarCep(String cep) async {
  final url = Uri.https('viacep.com.br','/ws/$cep/json/');

  final response = await http.get(url);

  if (response.statusCode != 200) {
    throw FormatException(
      'ERRO ao consultar a API. Status code ${response.statusCode}',
    );
  }

  //? DECODE

  Map<String, dynamic> parsedJson = jsonDecode(response.body);

  if (parsedJson['erro'] == true) {
    print('CEP não encontrado ');
  }

  print('\n=========== ENDEREÇO ============');

  Cep endereco = Cep.fromJson(parsedJson);

  print(endereco);

  print('\n=========== JSON ===========');

  print(jsonEncode(endereco.toJson()));

  //
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

  Cep(
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
  );

  factory Cep.fromJson(Map<String, dynamic> map) {
    return Cep(
      map['cep'] ?? '',
      map['logradouro'] ?? '',
      map['complemento'] ?? '',
      map['unidade'] ?? '',
      map['bairro'] ?? '',
      map['localidade'] ?? '',
      map['uf'] ?? '',
      map['estado'] ?? '',
      map['regiao'] ?? '',
      map['ibge'] ?? '',
      map['gia'] ?? '',
      map['ddd'] ?? '',
      map['siafi'] ?? '',
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
     logradouro: $logradouro
     complemento: $complemento,
     unidade: $unidade,
     bairro: $bairro,
     localidade: $localidade,
     uf:$uf,
     estado:$estado,
     regiao:$regiao,
     ibge:$ibge,
     gia:$gia
     ddd:$ddd,
     siafi:$siafi
    ''';
  }
}
