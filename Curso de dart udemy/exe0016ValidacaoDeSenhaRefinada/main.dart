import 'dart:io';

void main() {
  print('Digite sua senha por favor:');
  String? entradaSenha = stdin.readLineSync();

  bool senhaValida = validarSenha(entradaSenha ?? '');

  if (senhaValida) {
    print('Senha válida');
  } else {
    print('Senha inválida ! Certifique-se de que a senha tenha: \n'
        '-No mínimo 8 caracteres;\n'
        '- Pelo menos uma letra maiúscula; \n'
        '- Pelo menos um número. ');
  }
}

bool validarSenha(String senha) {
  // senha for menor que 8 caracteres
  if (senha.length < 8) {
    return false;
  }

  // objetos  RegExp  utilizados para saber se  os valores constam em uma String
  RegExp temMaiuscula = RegExp(r'[A-Z]'); // linha de instanciamento

  RegExp temnumero = RegExp(r'[0-9]');

  // Se senha tem letras Maiúsculas de A a Z e numeros  entao
  if (temMaiuscula.hasMatch(senha) && temnumero.hasMatch(senha)) {
    return true;
  }

  return false;
}
