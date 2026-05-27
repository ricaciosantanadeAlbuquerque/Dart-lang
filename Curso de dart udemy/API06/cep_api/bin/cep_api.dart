import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future<void> main(List<String> argments) async {
  await cepApi();
}

Future<void> cepApi() async {
  var url = Uri.https('viacep.com.br', '/ws/58038680/json/');

  try {
    var response = await http.get(url);
    if (response.statusCode == 200) {
      //? DEcode
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;

      //? Serialização
      Cep cep = Cep.fromJson(jsonResponse);

      print('Bairro: ${cep.bairro}, logradouro: ${cep.logradouro}');

      //? ENCODE

      Map<String, dynamic> map = cep.toJson();

      String jsonResult = convert.jsonEncode(map);

      print('jsonResult:$jsonResult');
    } else {
      throw Exception('ERRO! ao consultar cep ${response.statusCode}');
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cep'] = this.cep;
    data['logradouro'] = this.logradouro;
    data['complemento'] = this.complemento;
    data['unidade'] = this.unidade;
    data['bairro'] = this.bairro;
    data['localidade'] = this.localidade;
    data['uf'] = this.uf;
    data['estado'] = this.estado;
    data['regiao'] = this.regiao;
    data['ibge'] = this.ibge;
    data['gia'] = this.gia;
    data['ddd'] = this.ddd;
    data['siafi'] = this.siafi;
    return data;
  }
}
