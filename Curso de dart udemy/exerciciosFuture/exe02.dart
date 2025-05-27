
/**
 * 2. Usando .then()
Use a função do exercício 1 e utilize .then() para imprimir a mensagem no console.
 */
void main() {
  mensagem().then((onValue) => print('$onValue'));
}

Future<String> mensagem() =>
    Future.delayed(Duration(seconds: 2), () => 'Boa Tarde, vamos a luta.');
