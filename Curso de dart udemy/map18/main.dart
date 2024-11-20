/**
 * Descrição: Crie um Map que armazena alunos e suas respectivas séries.
 * Organize os alunos por série em um novo Map, 
 * onde a chave é a série e o valor é uma lista com os nomes dos alunos.
   Dica: Verifique se a chave existe antes de adicionar novos alunos à lista.
 */
import 'dart:io';

void main() {
  var result;
  String? opcao = 'nao';
  var list;
  Map<String, List<String>> mapaEscolar = Map();
  print('--------------Olá seja Bem vindo !!!-------------');
  do {
    for (int i = 0; i < 1; i++) {
      List<String> listName1 = [];
      for (var j = 0; j < 3; j++) {
        print('Digite sim para continuar e nao para sair');
        final String? op = stdin.readLineSync();

        if (op == 'sim') {
          print('Digite seu nome por favor !!');
          final String? nomeEntrada = stdin.readLineSync();
          if (nomeEntrada != null) {
            listName1.add(nomeEntrada);
          }
        } else {
          break;
        }
        list = listName1;
      }
      break;
    }

    print(list);
    print('Digite sua serie');
    final String? serieEntrada = stdin.readLineSync();
    result = adicionarAluno(serieEntrada!, list, mapaEscolar);

    print('Deseja continuar digite sim ou nao para sair');
    opcao = stdin.readLineSync();
  } while (opcao != 'nao');
  print(result);
}

/// parâmetro nomeado default
dynamic adicionarAluno(
    [String key = '---', List<String>? nome = null, var mapa]) {
  mapa[key] = nome;
  //print(mapa);

  return mapa;
}
