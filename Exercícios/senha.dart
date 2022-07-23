import 'dart:io';

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
