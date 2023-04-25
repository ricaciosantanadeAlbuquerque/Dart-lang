void main() {
  const pi = 3.14;
  // pi = 23; valor constante
  double raio = 2;
  var resultado = pi * (raio * raio);
  print("O valor do raio é ${resultado}");

  // Em listas [] 'final', seu conteúdo pode variar, porém a lista sempre será uma lista
  final List<int> lista = [1, 2, 3, 4];
  lista.add(14);
  print(lista);
  lista.remove(2);
  print(lista);
  // lista = [];  A lista não pode variar ou ser sobreposta, porém seu conteúdo pode.

  const listaConst = [
    1,
    2,
    3,
    5,
    6,
    7,
  ];
  // ERRO !listaConst.add(5);
  // ERRO !   listaConst = [];
  // Em listas const todo seu conteúdo é constante, tanto a lista e constante como seu conteúdo e constante.

  final List<dynamic> vetor = const [1, 'j', 55, 'p'];
  // Erro ! vetor.add(66); está lista, possui seus valores constantes.

  for (var j = 0; j < 5; j++) {
    final indice = j;
    //const mensagem = j; ERRO elá não pode ser sobreposta a cada loop, é constante em tempo de compilação 
  }
}
