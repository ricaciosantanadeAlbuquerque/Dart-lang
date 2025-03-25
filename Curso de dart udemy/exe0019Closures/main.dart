void main() {
  var funcaoSomar = somarValor(valor: 10);
  print(funcaoSomar);

  print('Resultado ${funcaoSomar(100)}');
}

int Function(int) somarValor({int valor = 0}) => (int value) => valor * value;
