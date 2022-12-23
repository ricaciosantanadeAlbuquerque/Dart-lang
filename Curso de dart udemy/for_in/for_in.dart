void main() {
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
  var nomes = ["ana", "joão", "matheus", "Adão", "lucas", "nino"];

  // percorrendo o array ou lista ou vetor utilizando  for in

  for (var p in numeros) {
    // para cada elemento do meu vetor numeros jogue para dentro de p
    print(p);
  }

  for (var j in nomes) {// para cada elemento do meu array nomes joque para dentro de j
    print("${j}");
  }
}
