import '../funcaoComParâmetrosPosicionais/fumcao01.dart';
import 'funcao.dart';

void main() {
  extecutarfuncao(() => print("pronto"));
  //======================================================================
  var resultado = ({String nome = "Valor não informado", int idade = 0, double altura = 0.0}) {
    print("$nome tem $idade anos de idade e altura de  $altura");
  };
  print(resultado(nome: "paula", idade: 23, altura: 1.66));
  //extecutarfuncao(resultado(nome: "paula", idade: 23, altura: 1.66)); erro fatal

  // =======================================================================
  extecutarfuncao(() {
    return print("${33 + 44}");
  });

  //=========================================================================
  soma(p: () => 100 + 200);

  var media = ({int nota1 = 0, int nota2 = 0, int nota3 = 0}) {// como se pode ver po default,(padrão) os valores são zero, caso não seja informado um valor
    return (nota1 + nota2 + nota3) ~/ 3;
  };

  print("${media(nota1: 10,nota2: 2)}");
  /*switch (expression) {
    case value:
      
      break;
    default:
  } como visto switch(){} não tem o ponto e virgula o final da chave diferente de media, isto acontece por media é uam variável que euma funcao e no fim do comando se coloca ;*/
}

void extecutarfuncao(Function() param0) => param0();

void soma({required Function p}) {
  print("${p()}");
}
