/**
 * Função List<int> filtrarImpares(List<int> valores)
Retorna somente os valores ímpares.

Agrupe os testes com group('filtrarImpares', ...)

Use expect(..., equals([...]))
 */

List<int> filtrarImpares(List<int> impares) {
  return impares.where((element) => element % 2 != 0).toList();
}
