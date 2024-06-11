import 'dart:math';
void main(){
 List<int> valoresNumericos = [];

  for(var i = 0; i < 10; i++){
    valoresNumericos.add(Random().nextInt(10 + 1));
  }
  valoresNumericos.sort((b,a) => a.compareTo(b));
  print(valoresNumericos);

  print('E valida ? ${valoresNumericos.every((e) => e > 0) ? 'Lista aprovada' : 'Lista reprovada'}');

  print('O valor existe dentro da coleção??? ${valoresNumericos.contains(10) ? 'Sim! O valor existe.' : 'Não! O valor não existe.'}');

  List nome = ['ricacio',28,1.72];
  print(nome.runtimeType);
  print(nome);

  List<String> cor = ['amarelo','azul','verde'];
  cor.add('Preto');
  cor.insert(0,'Roxo');
  cor.removeLast();
  print(cor.length);
  print(cor.contains('azul') ? 'Sim' : 'Não');
  print(cor.runtimeType);
  print(cor);

  /**
   * insert()
   * add()
   * addAll()
   * remove()
   * removeWhere()
   * removeLast()
   * addLast()
   * addFirst()
   * forEach()
   * expand()
   * map()
   * every()
   * where()
   * whereType()
   * reduce();
   * fold();
   * contains()
   * sort()
   * shuffle()
   * take()
   * skip()
   * elementAt()
   * removeAt()
   * List.from()
   * List.filled()
   * List.generate()
   * compareTo()
   */
}