// Crie uma função Arrow que recebe um valor numerico e retorna P se for positivo ou N se for negativo.
void main() {
  var resposta = testValor(-12);
  showMenssage(resposta);

  showMenssage(testValor(10)); // o que temos é showMenssage recebendo o retorno  testValor;

}

bool testValor(num numerio) => (numerio > 0) ? true : false;

void showMenssage(bool value) => (value == true) ? print('Positivo') : print('Negativo');
