/**
 * Função String inverter(String texto)
Retorna o texto invertido (ex: 'abc' → 'cba').
 */

String reverter({required String texto}) {
  return texto.split('').reversed.join();
}


