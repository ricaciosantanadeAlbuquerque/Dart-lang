import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  List<int> numeros = [];
  for (var j = 0; j < 10; j++) {
    numeros.add(random.nextInt(100) + 1);
  }
  print(numeros);
  print("Digite um valor numerico que você deseja encontrar.\n");
  String? entradaValor = stdin.readLineSync();

  if (entradaValor != null) {
    if (entradaValor.isNotEmpty == true) {
      try {
        int numeroBusca = int.parse(entradaValor);
        bool resultado = busca(numeroBusca, numeros);
        if (resultado == true) {
          print("O valor foi encontrado !\n");
        } else {
          print("O não existe !\n");
        }
      } catch (e) {
        throw Exception('ERRO! $entradaValor valor não numerico\n');
      }
    } else {
      print("ERRO! valor inválido.\n");
    }
  } else {
    print("nulo\n");
  }
}

bool busca(int buscado, List<int> array) {
  var achado = false;

  for (var valor in array) {
    if (buscado == valor) {
      achado = true;
      break;
    }
  }

  return achado;
}
