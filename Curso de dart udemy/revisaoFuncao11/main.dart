/**
 * Faça uma classe que possua um método que recebe um número inteiro, referente a idade de alguém, e retorne uma mensagem de acordo com a categoria adulto criança idoso jovem adolescente bebe.
 */

void main() {
  print(categoria(40));
}

String categoria(int idade) {
  var mensagem = '';

  if (idade >= 0 && idade <= 2) {
    mensagem = "Bebê";
  } else if (idade >= 3 && idade <= 11) {
    mensagem = "Criança";
  } else if (idade >= 12 && idade <= 19) {
    mensagem = "Adolescente";
  } else if (idade >= 20 && idade <= 30) {
    mensagem = "Jovem";
  } else if (idade >= 31 && idade <= 60) {
    mensagem = "Adulto";
  }

  return mensagem;
}
