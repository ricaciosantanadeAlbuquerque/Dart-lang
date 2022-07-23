import 'dart:io';

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
  double numero1 = double.parse(numero!);
  double numero3 = double.parse(numero2!);

  print("Por favor digite sua senha !");
  String? senhaConfirmacao = stdin.readLineSync();
  //CONVERÇÃO
  int senhaConfirmacao1 = int.parse(senhaConfirmacao!);
  // TESTE CONDIÇÃO
  if (senha1 == senhaConfirmacao1) {
    double resultado = numero1 / numero3;
    print("O resultado desta o peração é ${resultado}");
  } else {
    print("ERRO! senha não  confere!");
  }
}
