/**
 *  Gerador de Senhas Fortes
Crie uma função que gere uma senha aleatória com 12 caracteres contendo:

Letras maiúsculas e minúsculas

Números

Caracteres especiais (@, #, !, etc.)

A senha deve ser única a cada execução
 */

import 'dart:math';
import 'dart:io';

void main() {
  print('Digite a quantidade de caracteres (mínimo 12):');
  String? entrada = stdin.readLineSync();

  if (entrada != null && entrada.isNotEmpty) {
    try {
      int quantidade = int.parse(entrada);
      if (quantidade >= 12) {
        var result = geradorSenhasFortes(tamanho: quantidade);
        print('Código Gerado: $result');
      } else {
        print('As senhas devem ter no mínimo 12 caracteres');
      }
    } catch (e) {
      print('Excecao: $e');
    }
  } else {
    print('ERRO!!! Digite valores válidos');
  }
}

/// Gerador de Senhas fortes e únicas
String geradorSenhasFortes({int tamanho = 12}) {
  String maiusculas = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  String minusculas = 'abcdefghijklmnopqrstuvwxyz';
  String numeros = '0123456789';
  String especiais = '!#%&*,-./:;^~';

  String concatenandoCaracteres = maiusculas + minusculas + numeros + especiais;

  Random random = new Random();

  String senha = '';

  //Garante que a senha tenha pelo menos um de cada tipo
  senha += maiusculas[random.nextInt(maiusculas.length)];
  senha += minusculas[random.nextInt(minusculas.length)];
  senha += numeros[random.nextInt(numeros.length)];
  senha += especiais[random.nextInt(especiais.length)];

// Gerando o resto da senha de forma aleatória e unica
  senha += List.generate(
      tamanho - 4,
      (index) => concatenandoCaracteres[
          random.nextInt(concatenandoCaracteres.length)]).join();
   
  // Embaralha a senha para não deixar os primeiros 4 previsíveis
  return String.fromCharCodes(senha.runes.toList()..shuffle());

  /**
   * runes retorna uma coleção de Iterable, com as posições da String
   * toList() converte essa coleção de Iterable para uma lista mutável
   * shuffle() embaralha a lista de posições da String
   * String.fromCharCodes() transforma a lista de posições em uma String
   */
}
