/**
Função bool ePar(int numero)
Retorna true se o número for par.
 */

bool ePar(int n) {
  assert(n >= 0);
  return n.remainder(2) == 0 ? true : false;
}
