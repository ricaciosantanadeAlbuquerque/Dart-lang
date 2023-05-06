/**
 *  - Faça um programa para verificar a validade de uma senha fornecida pelo usuário. Se o usuário digitar a senha 
  ‘123456’, escrever a mensagem ‘Acesso liberado’. Caso contrário, escrever ‘Acesso negado’;

 */
import 'dart:io';

void main() {
  int senha = 123456;

  print("Digite uma senha por favor !");
  String? entradaSenha = stdin.readLineSync();

  if (entradaSenha != null) {
    if (entradaSenha.isNotEmpty == true) {
      try {
        int senha123 = int.parse(entradaSenha);

        if (senha == senha123) {
          print("Acesso liberado");
        } else{
          print("Acesso negado");
        }
        
      } catch (e) {
        throw Exception('ERRO!');
      }
    } else {
      print('$entradaSenha, por favor digite um valor válido');
    }
  } else {
    print(" Valor nulo ! ");
  }
}
