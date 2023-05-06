/**
 * 2 - Faça um programa que peça ao usuário para cadastrar uma senha. Na sequência, deve pedir ao usuário que 
digite dois números inteiros e calcular a divisão do primeiro pelo segundo. O programa deve solicitar ao usuário 
a senha e, caso esteja correta, mostrar o resultado da divisão. Caso a senha esteja incorreta, mostrar uma 
mensagem de erro e encerrar o aplicativo (sem mostrar o resultado da divisão). OBS: Para encerrar seu aplicativo, 
utilize o método exit(0).
 */
import 'dart:io';

void main() {
  print("Cadastre uma senha !\n");
  String? entradaSenha = stdin.readLineSync();
  print("Digite o primeiro Valor !\n");
  String? valor1Entrada = stdin.readLineSync();
  print("Digite o segundo  valor !\n");
  String? valor2Entrada = stdin.readLineSync();

  if (valor1Entrada != null && valor2Entrada != null) {
    if (valor1Entrada.isNotEmpty == true && valor2Entrada.isNotEmpty == true) {
      try {
        // conversão

        num valor1 = num.parse(valor1Entrada.replaceAll(',', '.'));
        num valor2 = num.parse(valor2Entrada.replaceAll(',', '.'));
        num senha = num.parse(entradaSenha!); // ! estou neste caso, afirmando para o compilador que o valor não é null. (OPS!! mas ele pode ser null).
        num divisao = valor1 / valor2;

        print("Digite a senha para visualizar o resultado !");
        String? confirmacaoEntrada = stdin.readLineSync();

        // conversão e tratamento
        if (confirmacaoEntrada != null) {
          if (confirmacaoEntrada.isNotEmpty == true) {
            try {
              num confirmaSenha = num.parse(confirmacaoEntrada);
              // teste condição
              if (confirmaSenha == senha) {
                print("Senha válinda !\n");
                print("O resultado da operação é ${divisao}\n");
              } else {
                print("Erro! senha inválida.\n O programa será encerrado !\n");
                exit(0);
              }
            } catch (NumberFormatException) {
              throw Exception('O valor não é numerico $confirmacaoEntrada');
            }
          } else {
            print("ERRO! Valor nulo.\n O Programa será encerrado. ");
            exit(0);
          }
        } else {
          print("ERRO! Valor nulo.\n O Programa será encerrado. ");
          exit(0);
        }
      } catch (e) {
        throw Exception('Digite apenas valores numéricos, Valor: ==[$valor1Entrada]== e valor: ==[$valor2Entrada]==  ou Senha: ==[$entradaSenha]== não são numéricos ');
      }
    } else {
      print("Digite valores válidos !");
    }
  } else {
    print("Digite valores válidos !");
  }
}
