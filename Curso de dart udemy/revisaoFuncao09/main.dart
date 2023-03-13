void main() {
  funcaoAnonima();
}

void funcaoAnonima() {
  print('''
Sintaxe

(){

}

() =>
''');

  var p = () {
    print("\n Olá Mundo \n ");
  };

  var mensagen = (String msg) => print(" \n funções anonimas ${msg}  \n");

  var resultado = (int valor1, int valor2) => valor1 + valor2;

  void executar(Function p) => p();

  p();
  mensagen("Não tem nome !");

  print(resultado(20, 30));

  executar(() {
    print("olá");
  });

  var executar2 = (Function p2) => p2();

  print(executar2(() {
    var nota1 = 10;
    var nota2 = 3;
    var nota3 = 8.7;

    var media = (nota1 + nota2 + nota3) / 3;
    return media;
  }));
}
