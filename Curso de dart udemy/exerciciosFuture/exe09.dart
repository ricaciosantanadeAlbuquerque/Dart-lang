/**
 * 10. Crie uma função que decide se usa .then() ou await com base em um parâmetro
A função deve receber um parâmetro booleano usarAwait. 
Se for true, use await; senão, use .then() para resolver um Future<String> com uma mensagem.
 */

void main() {
  escolha(false);
}

void escolha(bool usarAwait) async {
  if (usarAwait) {
    print(await mensagem());
    print('await');
  } else {
    mensagem().then((onValue) {
      print(onValue);
      print('then()');
    });
  }
}

Future<String> mensagem() {
  return Future.delayed(Duration(seconds: 2), () {
    return 'Para colher e necessário plantar';
  });
}
