/**
 * A função where serve para filtar os elementos de uma lista, podendo retornar uma lista do mesmo tamanho ou menor
 * 
 *  */
void main(List<String> args) {
  List<int> idade = [12, 13, 14, 15, 18, 22, 33, 55, 70];
  print(idade.where((element) => element is int).toList()); // a função where gera uma nova lista com os elementos que forem aprovados na condição
  print('');
  print(idade.whereType<int>()); // o retorno é um interable, para colocar como List use o toList();

  final maiorIdade = idade.where((int element) {
    return element >= 18;
  }).toList();

  print(maiorIdade);

  print('');
  print(idade.whereType<double>()); // nenhum foi aprovado
  /**
   * whereType<int>(); filtra pelo tipo
   */

  print(idade.whereType().runtimeType);

  var crianca = idade.singleWhere((element) {
    return element < 10;
  }, orElse: () => 0);

  print(crianca);

  //  filtrando lastWhere()

  int menor = idade.lastWhere((element) => element.toString().startsWith('1'), orElse: () => 0);
  print(menor);

  List<String> nomes = ['ricacio', 'ricardo', 'lucas', 'rick', 'ana', 'dora'];
  // Deve ser gerada uma nova lista filtrada da lista nomes. esta lista terá só nomes com a letra R

  List<String> nomesR = nomes.where((element) => element.contains('r')).toList();
  print(nomesR);

  print(nomesR.every((element) => element is String) ? 'Sim todos os elementos são String' : 'Não ERRO!');

  nomesR.forEach((element) => print(element));

  var test = nomesR.map((element) {
    return 'teste $element';
  }).toList();
  print(test);

  final duplicado = nomesR.expand((e) => [e, e]).toList();

  print(duplicado);

  var nomesD = nomesR.where((element) => element.contains('d')).toList();
  print(nomesD);
}
