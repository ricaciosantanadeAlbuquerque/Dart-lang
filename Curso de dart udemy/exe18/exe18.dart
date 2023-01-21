import 'dart:io';

//1. Foi realizada uma pesquisa de algumas características físicas de 5 habitantes de uma certa região. De cada habitante foram coletados os seguintes dados: sexo, cor dos olhos (azuis, verdes ou castanhos), cor dos cabelos (louros, pretos ou castanhos) e idade. Faça um procedimento que leia esses dados em um vetor de registro. O vetor de registro deve ser enviado por referência.
void main() {
  List<List<String>> registro = [];
  dados(array: registro);
}

void dados({var array}) {
  for (var i = 0; i < 5; i++) {
    List<String> lista = []; // a cada loop a lista e recriada.
    for (var j = 0; j < 1; j++) {//os dados serão coletados uma única vez criando  uma lista única que será guardada dentro de array.add() lista[0] = sexo lista [1] = cor dos olhos etc essa lista irá para array[posicao relativa]  
      print("Digite seu sexo [H] para homens e [F] para mulheres");
      String? sexo = stdin.readLineSync();
      lista.add(sexo!);
      print("Digite a cor de seus olhos ");
      String? olhos = stdin.readLineSync();
      lista.add(olhos!);
      print("Digite a cor de seu cabelo ");
      String? cabelo = stdin.readLineSync();
      lista.add(cabelo!);
      print("Digite sua idade !");
      String? idade = stdin.readLineSync();
      lista.add(idade!);
    }
    array.add(lista); // guardado as lista nas posições de array
  }



  for (var linha = 0; linha < 5; linha++) {
    print("linha na posição $linha valor: ${array[linha]}");
  }
}
