import 'dart:math';

dynamic escolherAleartorio(List lista) {
 return lista.isEmpty ? null : lista[Random().nextInt(lista.length)];
}
