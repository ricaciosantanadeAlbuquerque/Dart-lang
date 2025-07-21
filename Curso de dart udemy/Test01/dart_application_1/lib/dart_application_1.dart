int calculate() {
  return 6 * 7;
}

List<String> converteEmLista(String nome) {
  return nome.split(' ').toList();
}

int soma(int num1, int num2) {
  return num1 + num2;
}

String maiorIdade(int idade) {
  if (idade < 0) throw ArgumentError('A idade não pode ser negatriva');
  return idade < 14
      ? 'Criança'
      : idade < 18
      ? 'Adolecente'
      : 'Adulto';
}

String recuperarNome(List<String> nomes) {
  return nomes[0];
}

int restoDivisao({required int num1, required int num2}) {
  return num1.remainder(num2);
}
