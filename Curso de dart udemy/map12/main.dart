/**
 * Escreva uma função que receba uma string e retorne um Map onde as chaves são as letras e os valores
 *  são a quantidade de vezes que cada letra aparece na string.
*  Exemplo: Para a string "banana", o Map resultante deve ser: {'b': 1, 'a': 3, 'n': 2}.
 */

void main() {
  final String nome = 'ricacio';
  Map<String, int> restul = contarOcorrencia(strArry: nome); // evocando função
  print(restul);
}

Map<String, int> contarOcorrencia({required String strArry}) {
  Map<String, int> mapOcorrencia = {}; // Map criado vazio sem chaves nem valor

  for (int i = 0; i < strArry.length; i++) {
    final String letra = strArry[i];
    // Sabendo que tenho a primeira letra da posição i, então podemos declarar as chaves do map
    mapOcorrencia[letra] = (mapOcorrencia[letra] ?? 0) + 1;
  }

  return mapOcorrencia;
}
/**
 * Toda String é Defato um array  [r,i,c,a,c,i,o]
 *  Para pegar  cada letra desta array String,  devemos fazer um for loop, atraves do loop obtemos cada letra
 * para ser usada como chave no map .
 * O Map<> foi criado mas não possui chaves nem valores, ao fazer  map[letras], estamos declarando uma chave para este Map
 * map[letras] = (map[letras] ?? 0) + 
 * o map tem a chave, mas não tem o valor, a condição acima indica que o map[letra] recebe  uma condição via ternário nulo
 * entre parentese que indica prioridade.
 *  Então lemos: Se map na chave letras for nulo ee ele é nulo porque não possui valor alocado na chave, Então aloque 0, por fim o zero 
 * será somado com o resto fora do parentese. 
 * 
 */

