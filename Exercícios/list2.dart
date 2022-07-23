void main() {
  List<int> vetor = [];
  for (int j = 0; j < 100; j++) {
    vetor.add(j);
  }
// foreach()
  vetor.forEach((element) {
    print(element);
  });
  List<int> subLista = vetor.sublist(
      1, 20); // o primeiro parâmetro é inclusivo o segundo é exclusivo
  print(subLista);
  List<int> num1 = vetor.sublist(50);

  print(num1);
  if (vetor.contains(50)) {
    print("Sim o valor existe !");
  } else {
    print(" não o valor  não existe! ");
  }
  // ========================================================================
  List<String> nome = ["ana ", "da", "Silva"];
  String j = nome.reduce((value, element) {
    return value + " " + element;
  });
  print(j);

  List<String> estado = ["PB", "RN", "PE", "SP", "RJ"];
  List<String> uniao = estado.sublist(2);
  print(uniao);
  String k = estado.reduce((value, element) {
    return value + " " + element;
  });
  print(k);
}
