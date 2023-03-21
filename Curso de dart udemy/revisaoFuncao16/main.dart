import 'dart:io';

void main() {
  var lista1 = ['ana','sexo Feminino', 'curso de informática', '36', 'anos'];
  print("Digite a palavra que você busca !");
  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    if (entrada.isNotEmpty) {
      print("O valor foi achado: ${buscaPalavras(palavra: entrada, lista: lista1)}");
      // vamos mais uma vez usar o ternário
    } else {
      print("é vazio !");
    }
  } else {
    print("é nulo");
  }
}

String buscaPalavras({required String palavra, required List<String> lista}) {
  bool achou = false;
  var mensagem = 'Não';

  for (var p in lista) {
   
    if (p.compareTo(palavra) == 1) {
      achou = true;
      break;
    }
  }

  if (achou == true) {
    mensagem = "Sim";
  }

  return mensagem;
}
