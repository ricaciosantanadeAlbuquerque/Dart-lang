import 'dart:io';

void main() {
  print('Digite sua senha por favor !');
  String? entradaSenha = stdin.readLineSync()?.trim();

  if (entradaSenha != null && entradaSenha.isNotEmpty) {
    bool result = validarSenha(senha: entradaSenha);

    if (result) {
      stdout.write('Senha validada com sucesso !!!');
    } else {
      print('A senha deve ter no mínimo 8 caracteres\n'
          'E deve ter letras maiúsculas e números');
      print('Não se pode colocar caracteres especiais na senha [!@#\$%^&(),.?":{}<>/\|]');
    }
  } else {
    print('Digite uma senha válida.');
  }
}

// ============================== Validação =================================

bool validarSenha({String senha = ''}) {
  if (senha.length < 8) return false;

  RegExp letrasMaiusculas = RegExp(r'[A-Z]'); // expressões regulares
  RegExp numero = RegExp(r'[0-9]');
  RegExp especial = RegExp(r'[!@#$%^&(),.?":{}<>/\|]');

  if (especial.hasMatch(senha)) return false;

  return letrasMaiusculas.hasMatch(senha) &&
      numero.hasMatch(senha); // hasMatch existe
}

/**
 * Crie uma função que receba uma senha e valide se ela:

Tem no mínimo 8 caracteres.

Contém pelo menos uma letra maiúscula.

Contém pelo menos um número.

Retorne true se for válida, false caso contrário.
 */