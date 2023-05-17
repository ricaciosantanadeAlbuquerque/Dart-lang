import 'dart:math';

void main() {
  List<int> numero = [];

  final lista = preencher(numero);

  int resultMaior = buscarMaior(lista);
  int resultMenor = buscarMenor(lista);

  print(lista);
  print("O menor valor $resultMenor");
  print("E o maior valor $resultMaior");
}

List<int> preencher(List<int> p) {
  Random random = Random();

  for (var j = 0; j < 10; j++) { // 0 10
   
    p.add(random.nextInt(10) + 1);

  }
 
  return p;
}

int buscarMaior(List<int> p) {
  int maior = 0;
  for (var j in p) {
    if (j > maior) {
      maior = j;
    }
  }
  return maior;
}

int buscarMenor(List<int> p) {
  int menor = 1000000;

  for (dynamic j in p) {
    if (j < menor) {
      menor = j;
    }
  }

  return menor;
}
