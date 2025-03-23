/**
 * Crie uma função que receba uma senha e valide se ela:

Tem no mínimo 8 caracteres.

Contém pelo menos uma letra maiúscula.

Contém pelo menos um número.

Retorne true se for válida, false caso contrário.
 */
import 'dart:io';

void main() {
  print('Digite sua senha por favor !!!');
  String? entradaSenha = stdin.readLineSync();
  var result = validarSenha(entradaSenha ?? 'Indefinido123');

  print('${result ? 'Senha válida!' : 'Senha inválida'}');
}

bool validarSenha(String senha) {
  var maiuscula = false;
  var numero = false;

  if (senha.length >= 8) {
    for (var i = 0; i < senha.length; i++) {
      String posicao = senha[i];
      if (posicao.codeUnitAt(0) >= 48 && posicao.codeUnitAt(0) <= 57) {
        numero = true;
      }

      if (posicao.codeUnitAt(0) >= 65 && posicao.codeUnitAt(0) <= 90) {
        maiuscula = true;
      }
    }
  } else {
    print('ERRO!!! A senha deve possuir no mínimo 8 caracteres.');
  }

  if (numero == true && maiuscula == true) {
    return true;
  } else {
    print('''ERRO! a Senha deve possuir valores numéricos,
        e 
       possuir pelomenos uma letra maiúscula. ''');
    return false;
  }
}
