import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> main() async {
  await cep(cep: entradaDados());
}

int entradaDados() {
  late int result;
  print('Seja Bem vindo.');
  print('Digite o CEP.');
  final String? entradaDados = stdin.readLineSync()?.trim();

  if (entradaDados != null && entradaDados.isNotEmpty) {
    if (entradaDados.length == 8) {
      try {
        int resultValue = int.tryParse(entradaDados) ?? 0;
        result = resultValue;
      } catch (exception, stackTrace) {
        print('Exception:$exception');
        print('stackTrace:$stackTrace');
      }
    } else {
      print('Erro ! Cep inválido');
      exit(0);
    }
  } else {
    print('Digite um cep Válido');
    exit(0);
  }
  return result;
}

Future<void> cep({required int cep}) async {
  if (cep > 0 && cep.toString().length == 8) {
    final Uri url = new Uri.https(
      'viacep.com.br',
      '/ws/${cep.toString()}/json/',
    );

    try {
      var response = await http.get(url);

      if (response.statusCode == 200) {
        //? Decode

        Map<String, dynamic> parsedJson = jsonDecode(response.body);
        //? Serialização

        Cep cep = Cep.fromJson(map: parsedJson);
        print('Logradouro: ${cep.toString()}');

        //? Encode

        String tojson = jsonEncode(cep.toJson());
        print('toJson: $tojson');
      } else {
        throw Exception('ERRO! statusCode:${response.statusCode}');
      }
    } catch (e, s) {
      print(e);
      print(s);
    }
  } else {
    throw Exception('ERRO! Cep inválido');
  }
}

class Cep {
 final String cep;
 final String logradouro;
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
        logradouro:$logradouro, 
        complemento:$complemento, 
        unidade:$unidade,
        bairro:$bairro,
        localidade:$localidade,
        uf:$uf,
        estado:$estado,
        região:$regiao,
        ibge:$ibge,
        gia:$gia,
        ddd:$ddd,
        siafi:$siafi
        ''';
  }
}
