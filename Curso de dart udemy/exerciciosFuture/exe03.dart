/**
 * 4. Encadeando múltiplos .then()
Crie um Future que retorna um número. Em seguida, encadeie .then() para dobrar esse número e, depois, adicionar 10, imprimindo o resultado final.
 */

void main(List<String> args) async {
  var resultado = await numero();
  print('Resultado $resultado');
}

Future<int> numero() => Future.value(10).then((onValue) {
  return (onValue * 2) + 10;
});
