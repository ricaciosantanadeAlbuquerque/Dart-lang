import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> main() async => cep(cep: entrada());

int entrada() {
  int result = 0;

  print('Seja bem vindo !');
  print('Por favor digite  seu CEP');

  String? entradaDado = stdin.readLineSync();

  if (entradaDado != null && entradaDado.isNotEmpty) {
    try {
      int dado = int.parse(entradaDado);
      result = dado;
    } catch (e) {
      print('ERRO ! $e');
    }
  } else {
    print('ERRO ! por favor digite um valor válido');
  }

  return result;
}

Future<void> cep({required int cep}) async {
  if (cep.toString().length == 8) {
    try {
      final Uri url = Uri.https('viacep.com.br', '/ws/${cep.toString()}/json/');
      var response = await http.get(url);
      if (response.statusCode == 200) {
        //? Decode
        Map<String, dynamic> parsedJson = jsonDecode(response.body);
        //? Serialização
        Cep cep = Cep.fromJson(parsedJson);
        print('Logradouro ${cep.logradouro}');

        //? Encode
        Map<String, dynamic> map = cep.toJson();
        String toJson = jsonEncode(map);

        print('toJson $toJson');
      } else {
        throw Exception('ERRO! StatusCode:${response.statusCode}');
      }
    } catch (e) {
      print(e);
    }
  } else {
    print('CEP inválido');
    exit(0);
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
        cep: (json['cep'].toString().isEmpty) ? 'indefinido' : json['cep'],
        logradouro: (json['logradouro'].toString().isEmpty)
            ? 'indefinido'
            : json['logradouro'],
        complemento: (json['complemento'].toString().isEmpty)
            ? 'indefinido'
            : json['complemento'],
        unidade: (json['unidade'].toString().isEmpty)
            ? 'indefinido'
            : json['unidade'],
        bairro: (json['bairro'].toString().isEmpty)
            ? 'indefinido'
            : json['bairro'],
        localidade: (json['localidade'].toString().isEmpty)
            ? 'indefinido'
            : json['localidade'],
        uf: (json['uf'].toString().isEmpty) ? 'indefinido' : json['uf'],
        estado: (json['estado'].toString().isEmpty)
            ? 'indefinido'
            : json['estado'],
        regiao: (json['regiao'].toString().isEmpty)
            ? 'indefinido'
            : json['regiao'],
        ibge: (json['ibge'].toString().isEmpty) ? 'indefinido' : json['ibge'],
        gia: (json['gia'].toString().isEmpty) ? 'indefinido' : json['gia'],
        ddd: (json['ddd'].toString().isEmpty) ? 'indefinido' : json['ddd'],
        siafi: (json['siafi'].toString().isEmpty)
            ? 'indefinido'
            : json['siafi'],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
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
}
