import 'dart:developer';

void main() {
  imprimirNome('Ricacio'); // ok
  imprimirNome(null);  // failed  == falha o assertionError foi lançado.
}

void imprimirNome(String? nome) {
  assert(
    nome != null,
    'Nome não pode ser nulo',
  ); // ser for null codigo para nesta linha
  log(nome!);
}

/**
 * O assert() recebe duas argumentos, o booleano e o String opcional
 * se true nada acontece, porém se for falso é lançada uma exceção chamada
 * assertionError
 */