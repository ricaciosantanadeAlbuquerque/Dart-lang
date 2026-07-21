import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future<void> main() async {
  await cep();
}

Future<void> cep() async {
  final Uri url = Uri.https('viacep.com.br', '/ws/01001000/json/');

  try {
    var response = await http.get(url);
    if (response.statusCode == 200) {
      //? Decode
      var parsedJson =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      //? Serializa
      Cep cep = Cep.fromJson(parsedJson);
      print('Logradouro: ${cep.logradouro}');

      //? Encode
      String toJson = convert.jsonEncode(cep.toJson());
      print('toJson:$toJson');
      
    } else {
      throw Exception('Erro ! statusCode:${response.statusCode}');
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
    final Map<String, dynamic> data = {};
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
