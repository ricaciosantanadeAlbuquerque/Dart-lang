void funcaoAnonima() {
  print(''' SINTAXE
    (){

    }

    () =>
''');

  var funcao = () => print("funções anonimas !");
  funcao();

  var executar = (String nome) => print("Olá $nome seja bem vindo \n");

  executar('Lucas');

  void executarFuncao({required void Function() p}) => p();

  executarFuncao(p: () {
    print("Olá MUndo.\n");
  });

  double Function() conversao(int valor) {
    return () {
      return valor.toDouble();
    };
  }

  var multiplicar = (int A, int B, int C) {
    return A * B * C;
  };

  int resposta = multiplicar(10, 10, 10);

  var recebeF = conversao(10);
  print(recebeF);

  print("O valor de retorno é ${recebeF()}");
  print(resposta);

  void nota1(int num1) {
    String nota2(int num2) {
      double nota3(int num3) {
        return (num1 + num2 + num3) / 3;
      }

      var n1 = nota3(10);
      return 'O valor da média é $n1';
    }

    print(nota2(20));
  }

  nota1(10);
}

void main() {
  funcaoAnonima();
}
