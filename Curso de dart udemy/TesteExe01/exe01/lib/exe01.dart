/**
 *  Função int dobrar(int valor)
Deve retornar o dobro de um número inteiro positivo
 */

int dobro({required int valor}) {
  //Use assert(valor > 0) para validar a entrada.
  assert(valor > 0, 'ERRO !!! valor igual a zero ou negativo');
  return valor * 2;
}
