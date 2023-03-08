/**
 * 2. Faça uma função que recebe por parâmetro um valor inteiro e positivo e retorna o valor lógico Verdadeiro caso o valor seja primo e Falso em caso contrário.
 */
import 'dart:io';

void main() {
  print("Digite um valor !\n");
  String? entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada.isNotEmpty) {
      try {
        int numero = int.parse(entrada);

        if (verdadeFalso(numero)) {
          // true
          print("verdadiro\n");
        } else {
          // false
          print("falso\n");
        }
      } catch (e) {
        throw Exception("Digite apenas valores numéricos !\n");
      }
    } else {
      print("Digite valores válidos !\n");
    }
  }
  
}

bool verdadeFalso(int valor) {
  bool retorno = false;
  int cont = 0;
  for (var j = 1; j <= valor; j++) {
    if (valor % j == 0) {
      cont++;
    }
  }
  if (cont == 2) {
    retorno = true;
  }

  return retorno;
}
