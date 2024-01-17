import 'dart:io';

/**
 * Faça um programa que solicita uma senha, simulando um caixa eletrônico.considere que a senha é JAVA. Caso o usuário forneça a senha  correta, apresente a mensagem "senha válida" e feche o app, caso o contrário "Senha inválida". Se o usuário fornecer a senha incorreta 3 vezes seguidas, o programa deve apresentar a mensagem "Cartão cancelado!!!" e sair do app 
 */
void main() {
  String? senhaEntrada;
  int contSenhaInvalida = 0;

  for (int i = 0; i < 3; i++) {
    print("Por favor digite uma senha para entrar\n");
    senhaEntrada = stdin.readLineSync();

    if (senhaEntrada != null) {
      if (senhaEntrada.isNotEmpty) {
        if (senhaEntrada.toUpperCase() == 'JAVA') {
          print('Senha válida\n');
          break;
        } else {
          print('Senha inválida!!!\n');
          contSenhaInvalida++;
        }
      }
    }

    if (contSenhaInvalida == 3) {
      print('Cartão cancelado !!!\n');
      exit(0);
    }
  }
}
