/**
 * Faça uma classe que recebe 4 idades, mostre as idades recebidas, a menor idade e a maior idade. 
 */

import 'dart:io';

void main() {
  print('Digite a primeira idade');
  String? entradaIdade1 = stdin.readLineSync();
  print('Digite a segunda idade');
  String? entradaIdade2 = stdin.readLineSync();
  print('Digite a terceira idade');
  String? entradaIdade3 = stdin.readLineSync();
  print('Digite a quarta idade');
  String? entradaIdade4 = stdin.readLineSync();

  if (entradaIdade1 != null && entradaIdade2 != null && entradaIdade3 != null && entradaIdade4 != null) {
    // todo operador relacional retorna um booleano

    if (entradaIdade1.isNotEmpty && entradaIdade2.isNotEmpty && entradaIdade3.isNotEmpty && entradaIdade4.isNotEmpty) {

      if (entradaIdade1 != entradaIdade2 && entradaIdade1 != entradaIdade3 && entradaIdade1 != entradaIdade4 && entradaIdade2 != entradaIdade3 && entradaIdade2 != entradaIdade4 && entradaIdade3 != entradaIdade4) {
        // converção =========================================================================================================

        try {
          int idade1 = int.parse(entradaIdade1);
          int idade2 = int.parse(entradaIdade2);
          int idade3 = int.parse(entradaIdade3);
          int idade4 = int.parse(entradaIdade4);

          print('Idades digitadas $idade1, $idade2, $idade3, $idade4');
          // o maior
          if (idade1 > idade2 && idade1 > idade3 && idade1 > idade4) {
            print('Maior idade: $idade1');
          } else if (idade2 > idade1 && idade2 > idade3 && idade2 > idade4) {
            print('Maior idade: $idade2');
          } else if (idade3 > idade1 && idade3 > idade2 && idade3 > idade4) {
            print('Maior idade: $idade3');
          } else if (idade4 > idade1 && idade4 > idade2 && idade4 > idade3) {
            print('Maior idade: $idade4');
          }

          // o menor

          if (idade1 < idade2 && idade1 < idade3 && idade1 < idade4) {
            print('Menor idade:$idade1');
          } else if (idade2 < idade1 && idade2 < idade3 && idade2 < idade4) {
            print('Menor idade:$idade2');
          } else if (idade3 < idade1 && idade3 < idade2 && idade3 < idade4) {
            print('Menor idade:$idade3');
          } else if (idade4 < idade1 && idade4 < idade2 && idade4 < idade3) {
            print('Menor idade:$idade4');
          }
        } catch (e) {
          throw Exception('ERRO! $entradaIdade1 ou $entradaIdade2 ou $entradaIdade3 ou $entradaIdade4 não é um valor numérico');
        }
      } else {
        print('ERRO ! não é permitido digitar os valores iguais.');
      }
    } else {
      print('Valores vazios !!! é necessário digitar valores.');
    }
  } else {
    print('ERRO!!! valores nulos.');
  }
}
