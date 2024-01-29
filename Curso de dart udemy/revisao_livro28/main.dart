/// funcões Anonimas com Variáveis
void funcoesAnonimas() {
  var variavelAnonima = () => print('Variável Anonima');
  variavelAnonima(); // call

  var executar = (String msg) => print('Variável anonima $msg');
  executar('com parâmetros');

  void executarFuncao(Function funcao) => funcao();
  executarFuncao(() => print('Função passada como parâmetro'));

  var somaValores = (num valor1, num valor2) {
    return 'A soma de $valor1 + $valor2 é igual ${valor1 + valor2}';
  };

  print(somaValores(40, 90));

  var texto = (String msg) => '$msg';
  print(texto('Sem luta não há vitória'));
}

void main() {
  funcoesAnonimas(); // call
}
