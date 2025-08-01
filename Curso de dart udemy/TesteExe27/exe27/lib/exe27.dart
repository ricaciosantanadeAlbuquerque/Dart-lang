import 'dart:math';

dynamic escolhaAleatoria(List<dynamic> lista) {
  if (lista.isEmpty) return null;
  int index = Random().nextInt(lista.length);
  return lista[index];
}
