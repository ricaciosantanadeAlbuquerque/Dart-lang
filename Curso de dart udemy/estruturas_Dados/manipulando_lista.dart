/**
 * 1️⃣ Manipulação de List
Crie uma lista de números inteiros com 10 elementos aleatórios.

Ordene a lista em ordem crescente.

Remova os números repetidos.

Exiba o maior e o menor número da lista
 */

import 'dart:math';
import 'dart:collection';

void main() {
  /// gerando a lista
  Random random = Random(); // geramos uma única instância de Random()
  List<int> numeros = List.generate(
      10, (index) => random.nextInt(10) + 1); // linhas de instânciamento

  print(numeros);

  /// ordenando a lista
  numeros.sort();

  print(numeros);

  // removendo os numeros aleatórios

  /**
  * Sabemos que o splayTreeSet() não permite valores redundantes e ainda ordena
   os valores em ordem crescente
  */
  SplayTreeSet<int> numerosUnicos = SplayTreeSet.from(numeros);

  List<int> novaListaUnica = numerosUnicos.toList();

  print(novaListaUnica);

  /// Exiba o maior e o menor número da lista.

  int menor =
      novaListaUnica.reduce((inicio, atual) => inicio < atual ? inicio : atual);
  int maior =
      novaListaUnica.reduce((inicio, atual) => inicio > atual ? inicio : atual);

      /**
       * outra forma
       *  A lista já está ordenada  em crescente
       *  do menor para o maior então temos uma  outra forma de buscar o menor
       *  e maior valor 
       *    
       * int menor = novaListaUnica.first;
         int maior = novaListaUnica.last;

       */

  print('O menor valor $menor e o maior valor $maior');
}
