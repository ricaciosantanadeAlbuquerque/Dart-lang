import 'dart:io';

/*10 – Faça um programa que repita as instruções abaixo (utilizando o do...while como estrutura mais externa e um 
for interno):
1. Ler o sexo e a altura de 10 pessoas.
2. Contar o número de homens e mulheres.
3. O programa deverá executar 10 vezes.
4. Após a execução do laço, o programa deverá escrever a altura da pessoa mais alta e a quantidade de homens 
e mulheres. */
main() {
  String? continuar;
  int homem = 0;
  int mulher = 0;
  double alturaMax = 0.0;
  print("Atenção [m] para homens e [F] para mulheres");
  print("Deseja iniciar o programa ?");
  continuar = stdin.readLineSync();
  while (continuar == "sim") {
    for (int i = 0; i < 10; i++) {
      print(" Digite seu sexo");
      String? sexo = stdin.readLineSync();
      print("Digite sua altura!");
      String? altura = stdin.readLineSync();
      double altura1 = double.parse(altura!);
      if (alturaMax < altura1) {
        alturaMax = altura1;
      }
      if (sexo == "homem" ||
          sexo == "M" ||
          sexo == "m" ||
          sexo == "masculino") {
        homem++;
      } else if (sexo == "mulher" ||
          sexo == "F" ||
          sexo == "f" ||
          sexo == "feminino") {
        mulher++;
      }
    }
    print("Deseja continuar[sim] ou [não] ?");
    continuar = stdin.readLineSync();
  }
  print("A altura máxima é ${alturaMax}");
  print("A quantidade de homens é ${homem}");
  print("A quantidade de mulhres é ${mulher}");
}
