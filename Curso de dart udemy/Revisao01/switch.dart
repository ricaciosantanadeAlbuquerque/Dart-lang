import 'dart:io';

void main(){
var resposta = 'nao';
do{
    print('Bem vindo a Calculadora.');
    print('----------------Menu---------------');
    print('Para somar digite [1]');
    print('Para subtrair digite [2]');
    print('Para multiplicar digite [3]');
    print('Para dividir digite [4]');
    print('Digite [5] para sair');
    String? entradaOp = stdin.readLineSync();

    if (entradaOp != null && entradaOp.isNotEmpty) {
      try {
        int op = int.parse(entradaOp);
        escolha(op: op); // chamada a função  escolha.
      } catch (e) {
        throw Exception('ERRO! o valor $entradaOp não pode ser convertido');
      }
    } else {
      print('ERRO! valor nulo ou vazio!! O programa será encerrado');
      exit(0);
    }
   print('Se dejasa continuar Digite [sim], Se deseja sair  digite [nao]');
   String? entradaResposta = stdin.readLineSync();
   if(entradaResposta != null && entradaResposta.isNotEmpty)
   resposta = entradaResposta.toLowerCase();
}while(resposta == 'sim');

  print('');

  print('---------------FIM PROGRAMA----------------');

}


double soma({required double valor1, required double valor2}) {
  return valor1 + valor2;
}

double subtracao({required double valor1, required double valor2}) {
  return valor1 - valor2;
}

double multiplicacao({required double valor1, required double valor2}) {
  return valor1 * valor2;
}

double divisao({required double valor1, required double valor2}) {
  return valor1 / valor2;
}


void escolha({required int op}){

  switch(op){
    case 1: 
    print('Digite o primeiro valor !!!');
    String? entradaValor1 = stdin.readLineSync();
    print('Digite o segundo valor');
    String? entradaValor2 = stdin.readLineSync();

    if(entradaValor1 != null && entradaValor2 != null){
      if(entradaValor1.isNotEmpty && entradaValor2.isNotEmpty){

        try{
          double num1 = double.tryParse(entradaValor1) ?? 0;
          double num2 = double.tryParse(entradaValor2) ?? 0;

         var resultado = soma(valor1: num1, valor2: num2); // chamada a função.
         print('O resultado da soma é $resultado\n');
 
        }catch(e){
          throw Exception('ERRO!!! $entradaValor1 ou $entradaValor2 não são algarismo numéricos.');
        }

      }else{
       print('ERRO!!! [Vazio] não foi passado valor algum. O programa será encerrado');
       exit(0);
      }
    }else{
      print('ERRO!!! valor nulo ou vazio ! O programa será encerrado.');
      exit(0);
    }
    break;
    case 2: 
     print('Digite o primeiro valor !!!');
      String? entradaValor1 = stdin.readLineSync();
      print('Digite o segundo valor');
      String? entradaValor2 = stdin.readLineSync();

      if (entradaValor1 != null && entradaValor2 != null) {
        if (entradaValor1.isNotEmpty && entradaValor2.isNotEmpty) {
          try {
            double num1 = double.tryParse(entradaValor1) ?? 0;
            double num2 = double.tryParse(entradaValor2) ?? 0;

          var resultado =  subtracao(valor1: num1, valor2: num2); // chamada a função.
           print('O resultado da subtração é $resultado\n');

          } catch (e) {
            throw Exception('ERRO!!! $entradaValor1 ou $entradaValor2 não são algarismo numéricos.');
          }
        } else {
          print('ERRO!!! [Vazio] não foi passado valor algum. O programa será encerrado');
          exit(0);
        }
      } else {
        print('ERRO!!! valor nulo ou vazio ! O programa será encerrado.');
        exit(0);
      }
    break;
    case 3:
     print('Digite o primeiro valor !!!');
      String? entradaValor1 = stdin.readLineSync();
      print('Digite o segundo valor');
      String? entradaValor2 = stdin.readLineSync();

      if (entradaValor1 != null && entradaValor2 != null) {
        if (entradaValor1.isNotEmpty && entradaValor2.isNotEmpty) {
          try {
            double num1 = double.tryParse(entradaValor1) ?? 0;
            double num2 = double.tryParse(entradaValor2) ?? 0;

           var resultado = multiplicacao(valor1: num1, valor2: num2); // chamada a função.
           print('O resultado da multipicação é $resultado\n');
          } catch (e) {
            throw Exception('ERRO!!! $entradaValor1 ou $entradaValor2 não são algarismo numéricos.');
          }
        } else {
          print('ERRO!!! [Vazio] não foi passado valor algum. O programa será encerrado');
          exit(0);
        }
      } else {
        print('ERRO!!! valor nulo ou vazio ! O programa será encerrado.');
        exit(0);
      }
      break;
      case 4:
       print('Digite o primeiro valor !!!');
      String? entradaValor1 = stdin.readLineSync();
      print('Digite o segundo valor');
      String? entradaValor2 = stdin.readLineSync();

      if (entradaValor1 != null && entradaValor2 != null) {
        if (entradaValor1.isNotEmpty && entradaValor2.isNotEmpty) {
          try {
            double num1 = double.tryParse(entradaValor1) ?? 0;
            double num2 = double.tryParse(entradaValor2) ?? 0;

          var resultado =  divisao(valor1: num1, valor2: num2); // chamada a função.
          print('O resultado da divisão é $resultado\n');
          } catch (e) {
            throw Exception('ERRO!!! $entradaValor1 ou $entradaValor2 não são algarismo numéricos.');
          }
        } else {
          print('ERRO!!! [Vazio] não foi passado valor algum. O programa será encerrado');
          exit(0);
        }
      } else {
        print('ERRO!!! valor nulo ou vazio ! O programa será encerrado.');
        exit(0);
      }
      break;
      case 5:
      print("Encerrando o programa");
      exit(0);
      default:
      print('ERRO! valor fora da faixa !');
      exit(0);
  }
}