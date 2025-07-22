int calculate() {
  return 6 * 7;
}

List<String> converteNomeEmLista({required String nome}) {
  return nome.split(',').toList();
}

num somar(num num1, num num2) => num1 + num2;

String maiorIdade({int idade = 0}) {
  if (idade < 0) throw ArgumentError('A idade não pode ser negativa');
  return idade < 14
      ? 'Criança'
      : idade < 18
      ? 'Adolecente'
      : 'Adulto';
}

String recuperarNome({required List<String> lista}) => lista[0];
