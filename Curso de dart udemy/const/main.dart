import 'Brasil.dart';

void main(List<String> args) {
  const pi = 3.14; // em varáveis const seu valor não pode ser alterado.
  double raio = 2;
  var resultado = pi * (raio * raio);

  print("${resultado}");

  // em lista ou array final, seu conteúdo pode ser alterado !

  final numero = [1, 2];
  numero.add(3);

  print(numero);

  final dynamic lista = const [0, 1, 2];
  // lista= 1; erro
  /**
   * Neste caso lita é uma variável final uma vez que ela receber o array,  lista será o array, não podendo ser alterado.
   * E como o array que lista recebe e const, seu conteúdo será constante, não podendo ser mudado diminuído ou acrescentado.
   */
  //lista.add(12); // Erro! exception
  //lista.remove(0); // Erro! exception

  const listaConstante = [1, 2, pi]; // em coleções ou array ,lista ,const, seu conteúdo deve ser constante.

  for (var i = 0; i < 3; i++) {
    final indiceFinal = i; // em tempo execução.
    const constante = 1; //  em tempo de compliação
    print("Contagem: ${indiceFinal + constante}");
  }

  /**
   * indiceFinal, será sempre inicializado em tempo de execução! Ele será recriado a cada loop com um novo valor,
   * porém o constante não pode mudar, como o nome já diz ele é constante. Se colocássemos 'i' no lugar de 1 daria ERRO.    
   * 
   */

  var pais = Brasil(-15.77777, -47.999999);
  print("\nObjeto $pais capital: ${Brasil.capital} latitude: ${pais.latitude} longetude: ${pais.longitude}\n");

  // pais.latitude = -12.5555555; os valores não podem ser alterados

  Brasil pais1 = new Brasil(12, 44);
   print("\nObjeto $pais1 capital: ${Brasil.capital} latitude: ${pais1.latitude} longetude: ${pais1.longitude}\n");
}
