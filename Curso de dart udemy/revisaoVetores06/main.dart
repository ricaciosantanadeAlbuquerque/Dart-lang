/**
 *  Ler um vetor R de 5 elementos contendo o gabarito da LOTO. A seguir ler um vetor A de 10
 *  elementos contendo uma aposta. A seguir imprima quantos pontos fez o apostador
 */
import 'dart:math';

void main() {
  Random ela = new Random();
  int cont = 0;
  List<int> gabarito = [];
  gabarito.add(ela.nextInt(5 + 1));
  List<int> aposta = [];
  aposta.add(ela.nextInt(100));

  for (var i = 0; i < 5; i++) {
    gabarito.add(ela.nextInt(5 + 1));
  }

  for (int i = 0; i < 5; i++) {
    aposta.add(ela.nextInt(5 + 1));
  }
  print(gabarito);
  print(aposta);
  print("===============");
  for (int j = 0; j < gabarito.length - 1; j++) {
    for (int i = j + 1; i < gabarito.length; i++) {
      if (gabarito[j] == gabarito[i]) {
        gabarito.remove(gabarito[j]);
      }
    }
  }

  for (int j = 0; j < gabarito.length - 1; j++) {
    for (int i = j + 1; i < gabarito.length; i++) {
      if (gabarito[j] == gabarito[i]) {
        gabarito.remove(gabarito[j]);
      }
    }
  }

  for (int j = 0; j < aposta.length - 1; j++) {
    for (int i = j + 1; i < aposta.length; i++) {
      if (aposta[j] == aposta[i]) {
        aposta.remove(aposta[j]);
      }
    }
  }

  for (int j = 0; j < aposta.length - 1; j++) {
    for (int i = j + 1; i < aposta.length; i++) {
      if (aposta[j] == aposta[i]) {
        aposta.remove(aposta[j]);
      }
    }
  }

  for (var i = 0; i < gabarito.length; i++) {
    for (var j = 0; j < aposta.length; j++) {
      if (gabarito[i] == aposta[j]) {
        cont++;
      }
    }
  }
  print(gabarito);
  print(aposta);
  print("\nVocê vez $cont pontos\n");
}
