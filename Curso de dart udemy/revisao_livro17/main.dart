import 'dart:io';

void main() {
  List<Map<String, String>> listaMapa = [
    {'nome': '', 'sexo': ''},
    {'nome': '', 'sexo': ''},
    {'nome': '', 'sexo': ''},
    {'nome': '', 'sexo': ''},
    {'nome': '', 'sexo': ''}
  ];

  for (var i = 0; i < 5; i++) {
    print('Por favor digite seu nome !');
    String? nomeEntrada = stdin.readLineSync();
    print('Por favor digite seu sexo ');
    String? sexoEntrada = stdin.readLineSync();

    if (nomeEntrada != null && sexoEntrada != null) {
      if (nomeEntrada.isNotEmpty && sexoEntrada.isNotEmpty) {
        listaMapa[i]['nome'] = nomeEntrada;
        listaMapa[i]['sexo'] = sexoEntrada;
      }
    }
  }
  print('');
  print(listaMapa);
  print('');

  print('Digite o sexo para listar todas as pessoas que possuem este sexo');
  String? sexoPesquisa = stdin.readLineSync();

  for (var mapa in listaMapa) {
    if (sexoPesquisa != null && sexoPesquisa.isNotEmpty) {
      if (mapa['sexo'] == sexoPesquisa || mapa['sexo']!.toUpperCase() == sexoPesquisa) {
        print('');
        print('Nome: ${mapa['nome']}, Sexo: ${mapa['sexo']}');
        print('');
      }
    }
  }
}
