/**
 * Faça uma busca de letras ou palavras utilizando a função CompareTo()
 */
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  String nome = "ricacio";
  print("Digite o nome ou as lestras que você  busca ");
  String? letrasNome = stdin.readLineSync();
  
  // ! estou informando que  letrasNome não é nula

  if (nome.compareTo(letrasNome!) == 0) {
    print(" Sim  o nome que você digitou é igual a o que está cadastrado ");
  } else if (nome.compareTo(letrasNome) == 1) {
    print("Sim o conjunto de lestras ou caracteres existe ");
  } else if (nome.compareTo(letrasNome) == -1) {
    print("O valor não existe dentro da String ");
  }

  // teste ===================================================================================

  //print(nome.compareTo(letrasNome!));
}
