import 'dart:io';
/* – Faça um programa que receba a idade e a altura de várias pessoas, calcule e mostre a média das alturas 
daquelas com mais de 50 anos. Para encerrar a entrada de dados, digite uma idade que seja menor ou igual a 
zero. Use a estrutura de repetição do ... while para resolver este problema. */
void main() {
  int idade = 1;
  int x = 0;
  int cont = 0;
  double somaAltura = 0.0;
  do {
    print("Digite sua idade ");
    String? idade1 = stdin.readLineSync();
    print("Digite a sua altura ");
    String? altura1 = stdin.readLineSync();
    double altura = double.parse(altura1!);
    int idade = int.parse(idade1!);

    if (idade >= 50) {
      somaAltura += altura;
      cont++;
    }
    x = idade;
  
  } while ( x > 0);
  double mediaAltura = somaAltura / cont;
  print("A média da altura das pessoas com mais de 50 anos é ${mediaAltura}");
}
