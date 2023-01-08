// faça uma função que recebe um número inteiro referente  a idade  de alguém,  e retorne uma mensagem de acordo com sua faze da vida, 0 a 2 bebe, 3 a 11 Criança, 12 a 19 adolescente, 20 a 30 jovem, 31 a 60 adulto, maior que 60 idoso
import 'dart:io';

void main(List<String> args) {
  print("Digite sua idade por favor");
  String? entrada = stdin.readLineSync();

  try {
    if (entrada != null && entrada != " ") {
      int idade = int.parse(entrada); // conversao ==
      print(faixaEtaria(idade: idade)); 
      /**
       * Como faixaEtaria() retorna uma String o valor será mostrado  na tela pela função print()
       */
    }
  } catch (numberFormatException) {
    print("O valor informado não é numerico, ou não existe!");
  }
}

// ======================== função Faixa etária ===========================================

String faixaEtaria({int idade = 0}) { // por default 0
  // este parâmetro aceita valores nulos
  var retorno;
  if (idade >= 0 && idade <= 2) {
    retorno = "bebe";
  } else if (idade >= 3 && idade <= 11) {
    retorno = "criança";
  } else if (idade >= 12 && idade <= 19) {
    retorno = "Adolescente";
  } else if (idade >= 20 && idade <= 30) {
    retorno = "Jovem";
  } else if (idade >= 31 && idade <= 60) {
    retorno = "Adulto";
  } else {
    retorno = "Idoso";
  }

  return retorno;
}
