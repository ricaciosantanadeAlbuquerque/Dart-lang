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

  // ignore: unused_local_variable
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

  test(); // chamada a função
}


void test(){
  print('=======================================================');
  List<double> doubles = [1.1,2.2,3.3,4.4,5.5];
  List<int> valores = [12,14,16,18,20];

  // ignore: unnecessary_type_check
  List<num> num1 = [...doubles,if(valores is List<int>) ...valores];
  print('==');
  print(num1 = [...valores,for(var item in  doubles) item]);
  print('==');
  print(num1);

  List<List<int>> matriz = [[1,2,3,],[4,5,6],[7,8,9]];
var lista = matriz.expand((element) => element).toList();
print('\n');
print(lista);

List<List<List<List<int>>>> box = [ [[],[[1],[2]],[]],[[[2]]]];
print(box);
}