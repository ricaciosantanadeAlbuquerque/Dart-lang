import 'dart:io';

void main() {
  var lista = []; //uma lista dinâmica
  for (int i = 0; i < 10; i++) {
    // 0 ate 2
    print("Digiteum valor para posição[${i}]");
    String? num1 = stdin.readLineSync(); // String nula
    int num = int.parse(num1!); // converção int.parse()
    lista.add(
        num); // como lista é um objeto da classe List<> ela utilizará um método add() para adicionar valores;
  }
  int maior = 0; // declarada e inicializada !
  int posicao = 0;
  int cont = 0; // contador
  for (int j in lista) {
    // para cada elemento  do meu array lista jogue para dentro de p type int
    print(j); // escreva p
    if (j > maior) {
      // se o valor do objeto j for maior do que [var maior], então maior e sobreposto pelo valor do objeto j
      maior = j;
      posicao = cont; // posição que é zero tem seu valor sobreposto por cont
    }
    cont++;
  }
  print("O maior valor é ${maior}");
  print("e está na posição ${posicao}");
}
