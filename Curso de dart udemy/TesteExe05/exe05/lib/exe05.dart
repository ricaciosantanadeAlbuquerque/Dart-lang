num somarLista({required List<num> lista}) {
  assert(lista.isNotEmpty, 'ERRO !! lista vazia');
  return lista.reduce((cont, element) {
    return cont + element;
  });
}
