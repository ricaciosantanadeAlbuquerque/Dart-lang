void main() {
  // um Array é uma lista dinamica e ordenada  de elementos entre chaves
  var texto = ["Fernando", "Leia"]; //  Lista ou array u vertor do tipo String List<String>
  var numeros = [1, 2.5, 5, 31, 36];
  var condicoes = [!false, true, false, null];

  /*print(texto);
  print("Os elementos do vetor numeros ${numeros}");
  print("\n");
  print("Os elementos  do vetor ou array condiçoes = ${condicoes}\n");
  print("${texto[0]} e ${texto[1]}");
  print("${texto[0]} tem ${numeros[4]} anos de idade ");

  // usando ternário
  print("condicao[3] == null  ${condicoes[3] ?? (condicoes[0]! ? condicoes[1] : condicoes[2])}");*/

  /**
   * ?? É um orepador de Assignação. 
   * Se o que estiver a esquerda do operador de assignção for nulo, então atribua ou mostre o que está a direta, 
   * neste caso temos um operador ternário a direta. () ? : 
   *   
   *   
   */
  /*print("${texto[1]} é ${numeros[3] > 17 ? "Maior" : "não é maior "} de idade. ");

  bool verdadeiro = !false;

  var arrayDinamico = ["texto", [], 3, 1.5, verdadeiro];
  print("${arrayDinamico}");

  arrayDinamico[0] = texto[0];
  arrayDinamico[1] = ["Martins", "de", "Andrade"]; // estamos guardando um array de três elementos dentro do arrayDinamico na posição 1

  arrayDinamico[2] = numeros[2];
  arrayDinamico[3] = numeros[1];
  arrayDinamico[4] = !verdadeiro;

  print("${arrayDinamico}");*/

  // funções do array

  var array = [0, 1, 2, 3, 4, 5, 6];

  array.add(10); // a função add adicoina  uma elemento no array
  array.insert(3, 55); // a função insert nos permite inserir um valor em uma posição desejada, o primeiro valor é a posição do array onde se deseja colocar o valor, a segunda é o próprio valor
  // insert(poisção,valor)
  array.removeAt(0); // remove um elemento atraves da sua posição removeAt(posição )
  print("${array}");
  array.removeRange(0, 4); // remove  os valores dentro de um intervalo passado
  print("${array}");
  array.remove(10); // o remove() basta passar o elemento que se deseja apagar
  print("${array}");
  print(array.length); // a própriedade length nos permite saber o tamanho do array ou list ou vetor
  array.clear(); // limpa toda a lista todo vetor

  print("$array == null: ${array == null}");
  print("$array == empty: ${array.isEmpty}"); // isEmpty == é vazio

  // ordenação sort()
  array = [
    100,
    20,
    3,
    44,
    5,
    66,
  ];
  array.sort(); // a função sorte ordena os valores
  print(array);
  // ordenação d
  array.sort((a, b) => b.compareTo(a)); // ordena os valores em decrescente 
  print("${array}");
}
