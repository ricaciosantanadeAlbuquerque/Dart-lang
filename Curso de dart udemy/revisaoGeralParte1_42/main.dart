import 'dart:io';

void main() {
  print("Digite sua idade !");
  String? entradaIdade = stdin.readLineSync();

  if (entradaIdade != null) {
    if (entradaIdade.isNotEmpty == true) {
      try {
        int idade = int.parse(entradaIdade);
        print("Categoria: ${faixaEtaria(idade:idade)}");
      } catch (e) {
        throw Exception("ERRO! o valor $entradaIdade  um valor numérico ");
      }
    } else {
      print("ERRO! valor inválido.");
    }
  } else {
    print("ERRO! valor nulo");
  }
}

String faixaEtaria({required int idade}) {

  var retorno;

  if (idade >= 0 && idade <= 2) {
    retorno = 'Bebé';
  } else if (idade >= 3 && idade <= 7) {
    retorno = 'Criança';
  } else if (idade >= 12 && idade <= 19) {
    retorno = 'Adolescente';
  } else if (idade >= 20 && idade <= 30) {
    retorno = 'Jovem';
  } else if (idade >= 31 && idade <= 60) {
    retorno = 'Adulto';
  } else {
    retorno = 'Idoso';
  }

  return retorno;
}
