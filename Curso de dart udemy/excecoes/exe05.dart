void main() {
  var result = verificarIdade(18);
  print('resultado: $result');
}

bool verificarIdade(int idade) {
  assert(
    idade >= 18,
    'Idade inválida para acesso',
  ); // se der erro ele para nesta linha.

  return true;
}
