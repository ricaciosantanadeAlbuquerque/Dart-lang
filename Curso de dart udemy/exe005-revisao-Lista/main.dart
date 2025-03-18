import 'dart:math';

/**
 * Crie uma lista de números e exiba apenas os números pares presentes nela.
 */
void main(List<String> args) {

  mostrarNumero(lista: carregarLista());
}

List<num> carregarLista() {
  
  List<num> listNumero = [];

  for (var i = 0; i < 100; i++) {
    var elementNumero = Random().nextInt(100 + 1);
    listNumero.add(elementNumero);
  }

  return listNumero;
}

void mostrarNumero({List<num>? lista}) {
  if (lista != null) {
    for (var element in lista) {
      if (element % 2 == 0) {
        print('Par: $element');
      }
    }
  }
}
