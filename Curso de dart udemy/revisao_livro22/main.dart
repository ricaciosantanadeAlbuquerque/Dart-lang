import 'dart:io';

/**
 *  Faça um programa que receba uma senha formada de quatro números inteiros, verifique se a senha está
correta e, caso não esteja, solicite novamente a senha. Se a senha entrada for a correta, deverá ser
apresentada a mensagem “Senha Correta”, caso contrário, “Senha Incorreta”. 
 */
void main() {
  String? resposta = 'sim';
  const int senhaDefinida = 4455;
  do {
    print('Digite uma senha válida com 4 digitos !');
    String? entradaSenha = stdin.readLineSync();
    if (entradaSenha != null) {
      if (entradaSenha.length == 4) {
        if (entradaSenha.isNotEmpty) {
          try {
            int senha = int.parse(entradaSenha);

            if (senha == senhaDefinida) {
              print('SENHA CORRETA !!!');
              break;
            } else {
              print('Erro!!! senha incorreta!  tente digitar a senha novamente.');
              print('=======================================');
              print('Digite uma senha válida com 4 digitos !');
              String? entradaSenha = stdin.readLineSync();
              if (entradaSenha != null) {
                if (entradaSenha.length == 4) {
                  if (entradaSenha.isNotEmpty) {
                    try {
                      int senha = int.parse(entradaSenha);

                      if (senha == senhaDefinida) {
                        print('SENHA CORRETA !!!');
                        break;
                      } else {
                        print('SENHA INCORRETA !!!');
                        break;
                      }
                    } catch (e) {
                      throw Exception('Erro !!!  Erro de converção de valores');
                    }
                  } else {
                    print('ERRO !! valor vazio !');
                  }
                } else {
                  print(" O valor digitado é inválido");
                }
              } else {
                print('ERRO! valor nulo !!!');
              }
            }
          } catch (e) {
            throw Exception('Erro !!!  Erro de converção de valores');
          }
        } else {
          print('ERRO !! valor vazio !');
        }
      } else {
        print("O valor digitado é inválido");
      }
    } else {
      print('ERRO! valor nulo !!!');
    }
    print('Digite [sim] para continuar ou [nao] para sair');
    resposta = stdin.readLineSync();
  } while (resposta == 'sim');
}
