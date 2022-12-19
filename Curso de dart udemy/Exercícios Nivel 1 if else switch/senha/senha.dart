/**
   *  - Faça um programa para verificar a validade de uma senha fornecida pelo usuário. Se o usuário digitar a senha 
      ‘123456’, escrever a mensagem ‘Acesso liberado’. Caso contrário, escrever ‘Acesso negado’;

   */
import 'Dart:io';

void main() {
  int senhaGravada = 123456;
  print("Por favor digite uma senha ");
  String? senha = stdin.readLineSync();
  int SenhaInt = int.parse(senha!);

  if (SenhaInt == senhaGravada) {
    print("Acesso liberado ");
  } else {
    print("Acesso negado");
  }
}
