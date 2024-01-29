/**
 * Faça uma função com parametros posicionados, que recebe um número inteiro, referente a idade de alguém, e retorne uma mensagem de acordo com a tabela a seguir:
 * de 0 a 2 :bebâ
 * de 3 a 11 :Crianças
 * de 12 a 19: adolescente
 * de 20 a 30 : jovem
 * de 31 a 60 : adulto
 * Maior de 60 :idoso
 */

void main() {
  print(faixaEtaria(31));
  print('');
  print(faixaEtaria(2));
}

String faixaEtaria([int? idade]) {
  var resultado;

  if (idade! >= 0 && idade <= 2) {
    resultado = 'Bebê';
  } else if (idade >= 3 && idade <= 11) {
    resultado = 'Criança';
  } else if (idade >= 12 && idade <= 19) {
    resultado = 'Adolescente';
  } else if (idade >= 20 && idade <= 30) {
    resultado = 'Jovem';
  } else if (idade >= 31 && idade <= 60) {
    resultado = 'Adulto';
  } else {
    resultado = 'Idoso';
  }

  return resultado;
}
