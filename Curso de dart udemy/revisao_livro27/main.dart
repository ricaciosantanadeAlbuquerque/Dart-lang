/// Funções com parametro posicionados devem obedecer a ordem declarada dos parâmetros
void funcaoParametroPocisionado() {
  void exibirDados(String nome, [int peso = 65, double? altura]) {
    print('Nome:$nome, peso:$peso, altura:$altura\n');
  }

  //chamada as funções =======================================================

  exibirDados('Ana', 32, 1.75);
  exibirDados('Matheus');
}

void main() {
  funcaoParametroPocisionado();
  funcaoParametroNomeados();
}

void funcaoParametroNomeados() {
  print('Funções com parametro nomeado');

  void exibirDados2(String nome, {int peso = 65, double? altura}) {
    print('Nome:$nome, peso:$peso, altura:$altura\n');
  }

  void fala() {
    print('Essa é uma função passada como parâmetro nomeado');
  }

  void saudacao(String nome, {required Function funcaoFalar}) {
    print('Olá,eu $nome');
    funcaoFalar();
  }

  String dados(String nome, int idade) => 'Nome:$nome, Idade:$idade';

  String Function(String, int) executar(String Function(String, int) p) {
    return p;
  }

  //======================================================================
  exibirDados2('Joseé');
  exibirDados2('Ana', altura: 1.65);
  saudacao('Lucas', funcaoFalar: fala);
  
  var funcaoRecebida = executar(dados);

  print(funcaoRecebida('Ana',32));
}
