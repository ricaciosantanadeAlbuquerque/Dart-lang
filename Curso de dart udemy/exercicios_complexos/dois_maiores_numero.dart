import 'dart:math';

void main() {
  List<int> numero = List.generate(10, (index) => Random().nextInt(10) + 1);
  print(numero);
  maiorValorSegundMaiorValor(array: numero);
}

void maiorValorSegundMaiorValor({required List<int> array}) {
  int segundoMaior = 0;
  int maior = 0;

  for (var element in array) {
    if (element > maior) {
      segundoMaior = maior;
      maior = element;
    } else if (element > segundoMaior && element != maior) {
      segundoMaior = element;
    }
  }

  print('Maior valor $maior');
  print('Segundo maior valor $segundoMaior');
}
