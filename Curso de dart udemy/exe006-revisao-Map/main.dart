/**
 *  Crie um mapa (Map) para armazenar o nome e a idade de três pessoas. Exiba os dados no console.
 */
import 'dart:io';

void main() {
  criarMapa();
}

void criarMapa() {
  List<Map<dynamic, dynamic>> lista = [];

  for (var i = 0; i < 3; i++) {
    Map<dynamic, dynamic> mapa = Map(); // linha de instânciamento
    print('Digite seu Nome');
    String? nome = stdin.readLineSync();
    print('Digite suan idade');
    String? idade = stdin.readLineSync();

    if (nome != null && idade != null) {
      if (nome.isNotEmpty && idade.isNotEmpty) {
        try {
          int idadeNum = int.parse(idade);
          mapa['nome'] = nome;
          mapa['idade'] = idadeNum;
          lista.add(mapa);
        } catch (e, s) {
          print('Excecao: $e');
          print('Stack Trace: $s');
        }
      } else {
        print('ERRO!!! digite valores válidos');
      }
    } else {
      print('ERRO!!! digite valores válidos');
    }
  }

  print(lista);
}
