void main(List<String> args) {
  List<double> numeros = [1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10];
  // Mapeando  inteiro

  final listaInt = numeros.map((element) {
    return element.toInt();
  }).toList();

  print(listaInt);

  //Mapeando para booleans

  final listBool = listaInt.map((e) {
    return e % 2 == 0;
  }).toList();

  print(listBool);

  // Mapeando para String

  List<String> parImpar = listBool.map((element) {
    return element ? 'Par' : 'impar'; // operador ternário
  }).toList();

  print(parImpar);
}
