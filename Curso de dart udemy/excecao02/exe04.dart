void main(List<String> args) {
  var result = validarSenha('ricacio1'); // para erro ricacio 7 caracteres
  print('Senha válida do usuário: $result ');
}

bool validarSenha(String senha) {
  /// Se a condição for falsa o código será encerrado  na linha 7 e não ira para
  /// linha
  assert(senha.length >= 8, 'Senha inválida');

  return true;

  // para executar o assert()
  // dart --enable-asserts excecao02\exe04.dart
}
