void main(){
  var matriz = [
    [1,2],
    [3,4]
  ];
  print(matriz.expand((element) => element)); //Iterable
  // convertendo a coleção e iterable para uma lista
    print(matriz.expand((element) => element).toList()); // lista
  List<dynamic> listaFlat = matriz.expand((element) => element).toList();
  print('');
  print(listaFlat);
  // lista duplicada

  List<dynamic> listaDuplicda = matriz.expand((element)  => [element,element]).toList();
  print('');
  print(listaDuplicda);

  List<num> numeros = [1,2.5,7.25,10];
  List<int> inteiros = [1,5,10];
  List<double> doubles = [2.5,7.25];

  List<dynamic> listaDinamica = [];

// outras maneiras de concatenar Listas

  print(listaDinamica = [1,5,10] + [2,7]);
  print(listaDinamica = []..addAll(inteiros)..addAll(doubles));

  // Operador spread == espalhar
// O espread só pode ser usado  dentro de uma lista / array
  print(listaDinamica = [0,...inteiros,15]);
  // ignore: unnecessary_type_check
  print( listaDinamica = [...inteiros,if(doubles is List<double>) ...doubles]);
  print('=');
  print(listaDinamica = [for(var item in numeros) item]);
}