import 'dart:io';

/**
 *  Faça um programa, utilizando while, que mostre na tela de 0 até N, em que N é o limite inserido pelo usuário.
 */
void main() {
  int cont = 0;
  print('Digite um valor para contagem');
  String? entradaContagem = stdin.readLineSync();

  if (entradaContagem != null) {
    if (entradaContagem.isNotEmpty) {
      try {
        int valorLimite = int.parse(entradaContagem);

        while (cont <= valorLimite) {

          print('Limite: $valorLimite, contagem:${cont}');
          cont++;
          
        }
     
      } catch (e) {
        throw Exception('ERRO !');
      }
    }
  }
}
