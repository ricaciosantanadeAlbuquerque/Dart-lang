import 'dart:math';

void main() {
  gerarNumeros(quantidade:10).listen((onData) {
    print('Número gerado: $onData');
  },
  onDone:() => print('Fim da geração de números aleatórios'));
}

/**
 * Gerador de números aleatórios até um limite
Crie uma função async* que gere números aleatórios a cada segundo até atingir um valor máximo n.
 */

Stream<int> gerarNumeros({int quantidade = 3}) async* {
  Random random = Random();
  for (int i = 0; i < quantidade; i++) {
    yield random.nextInt(quantidade + 1 ); // + 1 fora seria soma, dentro e até o limite n
  }
}
