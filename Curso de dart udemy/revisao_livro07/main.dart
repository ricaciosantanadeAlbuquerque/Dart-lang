import 'dart:io';

void main() {
  chamada1(); // call 1
}

void chamada1() {
  void chamada2() {
    void chamada3() {
      print('Digite 1 para somar');
      print('Digite 2 para subtrair');
      print('Digite 3 para multiplicar');
      print('Digite 4 para dividir ');
      String? entradaValor = stdin.readLineSync();

      if (entradaValor != null) {
        if (entradaValor.isNotEmpty) {
          try {
            int op = int.parse(entradaValor);

            switch (op) {
              case 1:
                print('Digite o primeiro valor');
                String? entradaNum1 = stdin.readLineSync();
                print("Digite o segundo valor");
                String? entradaNum2 = stdin.readLineSync();

                if (entradaNum1 != null && entradaNum2 != null) {
                  if (entradaNum1.isNotEmpty && entradaNum2.isNotEmpty) {
                    try {
                      num num1 = num.parse(entradaNum1);
                      num num2 = num.parse(entradaNum2);

                      var resultado = num1 + num2;

                      print('O resultado da soma é $resultado');
                    } catch (e) {
                      throw Exception('ERRO $entradaNum1 e $entradaNum2 não são valores numéricos');
                    }
                  } else {
                    print("ERRO! é necessário digitar um valor ");
                  }
                } else {
                  print('ERRO! valor nulo');
                }

                break;
              case 2:
                print('Digite o primeiro valor');
                String? entradaNum1 = stdin.readLineSync();
                print("Digite o segundo valor");
                String? entradaNum2 = stdin.readLineSync();

                if (entradaNum1 != null && entradaNum2 != null) {
                  if (entradaNum1.isNotEmpty && entradaNum2.isNotEmpty) {
                    try {
                      num num1 = num.parse(entradaNum1);
                      num num2 = num.parse(entradaNum2);

                      dynamic resultado = num1 - num2;

                      print('O resultado da subtração é $resultado');
                    } catch (e) {
                      throw Exception('ERRO $entradaNum1 e $entradaNum2 não são valores numéricos');
                    }
                  } else {
                    print("ERRO! é necessário digitar um valor ");
                  }
                } else {
                  print('ERRO! valor nulo');
                }

                break;
              case 3:
                print('Digite o primeiro valor');
                String? entradaNum1 = stdin.readLineSync();
                print("Digite o segundo valor");
                String? entradaNum2 = stdin.readLineSync();

                if (entradaNum1 != null && entradaNum2 != null) {
                  if (entradaNum1.isNotEmpty && entradaNum2.isNotEmpty) {
                    try {
                      num num1 = num.parse(entradaNum1);
                      num num2 = num.parse(entradaNum2);

                      dynamic resultado = num1 * num2;

                      print('O resultado da multiplicação $resultado');
                    } catch (e) {
                      throw Exception('ERRO $entradaNum1 e $entradaNum2 não são valores numéricos');
                    }
                  } else {
                    print("ERRO! é necessário digitar um valor ");
                  }
                } else {
                  print('ERRO! valor nulo');
                }

                break;
              case 4:
                print('Digite o primeiro valor');
                String? entradaNum1 = stdin.readLineSync();
                print("Digite o segundo valor");
                String? entradaNum2 = stdin.readLineSync();

                if (entradaNum1 != null && entradaNum2 != null) {
                  if (entradaNum1.isNotEmpty && entradaNum2.isNotEmpty) {
                    try {
                      num num1 = num.parse(entradaNum1);
                      num num2 = num.parse(entradaNum2);

                      dynamic resultado = num1 / num2;
                      print('O resultado da multiplicação é $resultado');
                    } catch (e) {
                      throw Exception('ERRO $entradaNum1 e $entradaNum2 não são valores numéricos');
                    }
                  } else {
                    print("ERRO! é necessário digitar um valor ");
                  }
                } else {
                  print('ERRO! valor nulo');
                }

                break;
              default:
                print('ERRO! opção inválida');
                exit(0);
            }
          } catch (e) {
            throw Exception('ERRO! $entradaValor não é um valor numérico'); // throw == lançar  catch == pegar
          }
        }
      } else {
        print('ERRO!!! valor nulo !');
      }
    }

    chamada3(); // call 3
  }

  chamada2(); // call 2
}
