import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'dart:io';

void main(List<String> args) async => await cep(cep: entradaDado());

int entradaDado() {
  late int result;
  print('===========BEM VINDO!==========');
  print('Digite seu CEP por favor.');
  String? entrada = stdin.readLineSync();

  if (entrada != null && entrada.isNotEmpty) {
    try {
      int cep = int.tryParse(entrada) ?? 0;
      result = cep;
    } catch (e) {
      print(e);
    }
  } else {
    print("ERRO! entrada de dados inválida, tente novamente");
    exit(0);
  }
  return result;
}

Future<void> cep({required int cep}) async {
  final Uri URL = Uri.https(
    'viacep.com.br',
    '/ws/${cep.toString()}/json/',
  );

  try {
    var response = await http.get(URL);
    if (response.statusCode == 200) {
      //? Decode
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;

      //? serializado
      Cep cep = Cep.fromJson(jsonResponse);

      print(cep.toString());

      //? DECODE

      Map<String, dynamic> map = cep.toJson();
      String toJson = convert.jsonEncode(map);
      print('\n toJson $toJson');
    } else {
      throw Exception('ERRO! ao consultar o CEP: ${response.statusCode}');
    }
  } catch (e) {
    print(e);
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
      'logradouro: $logradouro,
      'complemento: $complemento,
      'unidade: $unidade,
      'bairro: $bairro,
      'localidade: $localidade,
      'uf: $uf,
      'estado: $estado,
      'regiao: $regiao,
      'ibge: $ibge,
      'gia: $gia,
      'ddd: $ddd,
      'siafi: $siafi,
''';
  }
}
