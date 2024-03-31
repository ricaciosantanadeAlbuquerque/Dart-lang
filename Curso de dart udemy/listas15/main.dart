void main(List<String> args) {
  reduce();
}

void reduce() {
  List<int> idades = [12, 15, 22, 25, 32, 44, 58, 68, 88, 70, 56];
  List<bool> boleanas = [true, false, !true, !false];

  // a maior idade use o método reduce
  print('Lista de idades $idades');
  print('');
  int maiorIdade = idades.reduce((int anterior, int atual) => (anterior > atual) ? anterior : atual);
  print('A maior idade $maiorIdade');
  // a menor idade
  int menoIdade = idades.reduce((int anterior, int atual) => (anterior > atual) ? atual : anterior);

  print('A menor idade $menoIdade ');
  // a média das idades

  int mediaIdade = idades.reduce((int anterior, int atual) {
    return anterior + atual;
  });

  print('A média das idades ${(mediaIdade / idades.length).toStringAsFixed(1)}');

  // soma de todos os  valores da lista

  print(idades.reduce((int anterior, int atual) => anterior + atual).truncate());

  bool and = boleanas.reduce((anterior, atual) {
    return anterior && atual;
  });

  print(and);

  bool or = boleanas.reduce((anterior, atual) => anterior || atual);
  print(or);
}
