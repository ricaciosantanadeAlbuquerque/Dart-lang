/**
 * Crie uma função somaComAtraso que:

Recebe dois números como entrada.
Retorna a soma desses números após 2 segundos. Use then() para exibir o resultado da soma.
 */
void main() {
  soma(valor1: 20, valor2: 30).then((onValue) {
    print('Soma:$onValue');
  });
}

Future<double> soma({double valor1 = 0, double valor2 = 0}) {
  return Future.delayed(Duration(seconds: 2), () {
    return valor1 + valor2; // será retornado a soma dos valores.
  });
}
