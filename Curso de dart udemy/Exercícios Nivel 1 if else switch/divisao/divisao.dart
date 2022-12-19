/**
 *  - Faça um programa que peça ao u;suário para cadastrar uma senha. Na sequência, deve pedir ao usuário que 
digite dois números inteiros e calcular a divisão do primeiro pelo segundo. O programa deve solicitar ao usuário 
a senha e, caso esteja correta, mostrar o resultado da divisão. Caso a senha esteja incorreta, mostrar uma 
mensagem de erro e encerrar o aplicativo (sem mostrar o resultado da divisão). OBS: Para encerrar seu aplicativo,  Exit()
 */
import 'Dart:io';

void main(List<String> args) {
  print("Por favor cadastre uma senha para prosseguir ");
  String? senha = stdin.readLineSync();
  print("Digite um valor Numerico");
  String? num1 = stdin.readLineSync();
  print("Digite o segundo valor Númerico");
  String? num2 = stdin.readLineSync();

  // conversão =========================
  int senhaInt = int.parse(senha!);
  int numero1 = int.parse(num1!);
  int numero2 = int.parse(num2!);

  // divisao ============================
  int resultado = numero1 ~/ numero2;

  // teste de senha =====================
  print("Para visualizar o resultado por favor, Digite a senha ");
  String? confimaSenha = stdin.readLineSync();
  int confimaSenhaInt = int.parse(confimaSenha!);

  if (senhaInt == confimaSenhaInt) {
    print("O resultado da divisão é ${resultado}");
  } else {
    print("Erro! o Programa será encerrado !");
    exit(0); // sair do programa
  }
}
