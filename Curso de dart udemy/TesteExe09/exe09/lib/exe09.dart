/**
 * unção bool validarEmail(String email)
Valide com regex que o e-mail contém @ e .

Use assert(email.contains('@'))

Teste com:

expect(..., isTrue)

expect(..., allOf([isA<bool>(), equals(true)]))
 */

bool validarEmail(String email) {
  assert(email.contains('@'),'ERRO! nesse email. falta @');
  final regex = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
  return regex.hasMatch(email);
}
