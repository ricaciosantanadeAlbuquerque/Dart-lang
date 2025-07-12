int calculate() {
  return 6 * 7;
}

List<String> converteEmLista(String nome) {
  return nome.split(' ').toList();
}

String maiorIdade({required int idade}) {
  if (idade < 0) throw ArgumentError('A idade não pode ser negativa!');
  return idade < 14
      ? 'Criança'
      : idade < 18
      ? 'Adolecente'
      : 'Adulto';
}

String recuperarNome(List<String> nome) {
  return nome[0];
}

int restoDivisao(int a, int b) {
  return a % b;
}
