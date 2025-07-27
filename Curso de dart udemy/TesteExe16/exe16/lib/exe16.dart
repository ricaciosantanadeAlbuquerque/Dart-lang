import 'package:collection/collection.dart';
/**
 * Crie uma função que verifica se dois conjuntos são iguais, independentemente da ordem.
 */

bool saoConjuntosIguais({required Set<int> n1, required Set<int> n2}) {
  assert(n1.isNotEmpty && n2.isNotEmpty);
  return SetEquality().equals(n1, n2);
}
