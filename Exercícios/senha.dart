import 'dart:io';
/*4 - Faça um programa para verificar a validade de uma senha fornecida pelo usuário. Se o usuário digitar a senha 
‘123456’, escrever a mensagem ‘Acesso liberado’. Caso contrário, escrever ‘Acesso negado’; */
void main() {
  int senha = 123456;
  print("Digite a senha para liberar o programa por favor !");
  String? senha1 = stdin.readLineSync();
  // CONVERSAO
  int senha2 = int.parse(senha1!);
  if (senha == senha2) {
    print("Acesso Liberado! ");
  } else {
    print("Acesso negado!");
  }
}
