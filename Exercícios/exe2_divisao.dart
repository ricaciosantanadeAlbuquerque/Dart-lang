import 'dart:io';
/*2 - Faça um programa que peça ao usuário para cadastrar uma senha. Na sequência, deve pedir ao usuário que 
digite dois números inteiros e calcular a divisão do primeiro pelo segundo. O programa deve solicitar ao usuário 
a senha e, caso esteja correta, mostrar o resultado da divisão. Caso a senha esteja incorreta, mostrar uma 
mensagem de erro e encerrar o aplicativo (sem mostrar o resultado da divisão). OBS: Para encerrar seu aplicativo, 
utilize o método System.exit(0). */
void main() {
  print("Bom dia :) \n");
  // ENTRADA DE DADOS
  print(" Por favor digite  uma senha para começar");
  String? senha = stdin.readLineSync();
  print("Bom! agora digite um número ");
  String? numero = stdin.readLineSync();
  print(" Por favor digite outro Número ");
  String? numero2 = stdin.readLineSync();
  // CONVERÇÃO DE TIPOS
  int senha1 = int.parse(senha!);
    int numero1 = int.parse(numero!);
  int numero3 =  int.parse(numero2!);

  print("Por favor digite sua senha !");
  String? senhaConfirmacao = stdin.readLineSync();
  //CONVERÇÃO
  int senhaConfirmacao1 = int.parse(senhaConfirmacao!);
  // TESTE CONDIÇÃO
  if (senha1 == senhaConfirmacao1) {
    int resultado = (numero1 / numero3).toInt();
    print("O resultado desta operação é ${resultado}");
  } else {
    print("ERRO! senha não  confere!");
    exit(0);
  }
}
