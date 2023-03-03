import 'dart:math';

/**
 * Ler um vetor D de 20 elementos. Retire todos os valores nulos ou negativos do vetor D. Escrever o
 * vetor após a retirada dos nulos e negativos.

 */
import 'dart:math';

void main() {
  Random n = new Random();
  List<int> numero = [];
  int cont = -5;
  for (var i = 0; i < 20; i++) {
    cont++;
    numero.add(cont);
  }
  print(numero);

  for (int i = 0; i < numero.length; i++) {
    if (numero[i] < 0) {
      numero.remove(numero[i]);
    }
  }

  for (int i = 0; i < numero.length; i++) {
    if (numero[i] < 0) {
      numero.remove(numero[i]);
    }
  }

  for (int i = 0; i < numero.length; i++) {
    if (numero[i] < 0) {
      numero.remove(numero[i]);
    }
  }

  print("Os valores do Array Numero sem valores negativos $numero");
}
