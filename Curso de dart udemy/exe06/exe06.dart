import 'dart:io';

void main(List<String> args) {
  var funcao = () {
    var array = [];
    for (var i = 0; i < 4; i++) {
      print("Digite a idade! ");
      String? entrada = stdin.readLineSync();
      int num1 = int.parse(entrada!);
      array.add(num1);
    }
    print(array);
    int maior = 0;
    int menor = 1000000;
    for (var j in array) {
      if (maior < j) {
        maior = j;
      }

      if (j < menor) {
        menor = j;
      }
    }
    print("O maior  valor é ${maior}\n");
    print("O menor valor é ${menor}");
  };

  funcao();
}
