void main() {
  closuresFuncao();
}
// Closure sem retorno ==============

void closuresFuncao() {
  var saudacao = (String nome) {
    var menssagem = (complemento) => print("Olá $nome, seja $complemento ");

    menssagem("Bem vindo !");
  };

  var soma = (int valorA) {
    return (int valorB) {
      return valorA + valorB;
    };
  };

  Function multiplicar(int valorA) {
    return (valorB) {
      return valorA * valorB;
    };
  }

  void notas(int n1, int n2, int n3) {
    void media() {
      var media = (n1 + n2 + n3) / 3;
    }

    media();
  }

  Function media1(num n1, num n2, num n3) => (qtd) => (n1 + n2 + n3) / qtd;

  print(saudacao);
  saudacao('ricacio');

  var somar = soma(20);

  print(somar(20));

  var resultado = multiplicar(100);
  print(resultado);
  print(resultado(3));
  print(notas);
  notas(10, 10, 10);
  var quantidade = media1(7, 5, 10);
  print(quantidade);
  print(quantidade(3));
}
