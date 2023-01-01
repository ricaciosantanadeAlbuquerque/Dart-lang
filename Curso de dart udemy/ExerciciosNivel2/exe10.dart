import "Dart:io";
/**
   * 10 – Faça um programa que repita as instruções abaixo (utilizando o do...while como estrutura mais externa e um 
for interno):
1. Ler o sexo e a altura de 10 pessoas.
2. Contar o número de homens e mulheres.
3. O programa deverá executar 10 vezes.
4. Após a execução do laço, o programa deverá escrever a altura da pessoa mais alta e a quantidade de homens 
e mulheres.
   */

void main() {
  String op = "sim";

  while (op == "sim" || op == "s") {
    double maior = 0;
    int cont = 0; // para que as variáveis venham zera no fim do loop for e da apresentação, necessário que elas estejam declaradas dentro do loop while  
    int cont1 = 0;
    for (var i = 0; i < 3; i++) {
      print("Por favor digite seu sexo Sendo [M] para mulheres e [H] para homens");
      String? sexoEntrada = stdin.readLineSync();
      print("Por favor digite sua altura ");
      String? alturaEntrada = stdin.readLineSync();
      double altura = double.parse(alturaEntrada!);
      String? sexo = sexoEntrada!.toUpperCase();

      if (sexo == "M") {
        cont++;
      }
      if (sexo == "H") {
        cont1++;
      }

      if (altura > maior) {
        maior = altura;
      }
    }
    print("A Altura da pessoa mais alta é ${maior.toStringAsFixed(2)}");
    print("A quantidade de homens é ${cont1} e de  mulheres é  ${cont}");
    print(" Desja continuar se sim Digite [sim] se não Digite [nao] ");
    String? entrada = stdin.readLineSync();
    op = entrada!; // é necessário informar que entrada não é nula, a menos que deseje tratar o erro
  }
}
