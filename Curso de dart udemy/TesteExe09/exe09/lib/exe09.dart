/**
 * unção bool validarEmail(String email)
Valide com regex que o e-mail contém @ e .

Use assert(email.contains('@'))

Teste com:

expect(..., isTrue)

expect(..., allOf([isA<bool>(), equals(true)]))
 */

bool validarEmail(String email) {
  final regex = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
  return regex.hasMatch(email);
}
