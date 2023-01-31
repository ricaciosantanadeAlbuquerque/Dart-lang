import 'dart:io';

import 'Conta_banco.dart';

void main() {
  ContaBanco contaPadrao;

  print("Digite nome ");
  String? entrada1 = stdin.readLineSync();
  print("Digite seu cpf ");
  String? entrada2 = stdin.readLineSync();
  print("Digite um número  para sua conta ");
  String? entrada3 = stdin.readLineSync();

  if (entrada1 != null && entrada2 != null && entrada3 != null) {
    try {
      int numeroConta = int.parse(entrada3);
      contaPadrao = new ContaBanco(nome: entrada1, cpf: entrada2, numeroConta: numeroConta);

      if (contaPadrao.getStatus() == true) {
        print(" A conta está aberta ! ");
      }

      print(" Digite o valor que deseja depositar ");
      String? valorEntrada = stdin.readLineSync();
      if (valorEntrada != null) {
        try {
          double valorDeposito = double.parse(valorEntrada);
          contaPadrao.depositar(valorDeposito);

          // valor de saque =======================================

          print("Digite o valor que você deseja sacar ");
          String? entradaSaque = stdin.readLineSync();
          if (entradaSaque != null) {
            try {
              double valorSaque = double.parse(entradaSaque);
              contaPadrao.sacar(valorSaque);
            } catch (NumberFormatException) {
              print("Digite apenas valores numericos ");
            }
          }

          print("\n${contaPadrao.toString()}\n");
        } catch (NumeberFormatException) {
          print("Digite valores válido ");
        }
        ;
      } else {
        print("Digite valores válidos");
      }

      print(contaPadrao.toString());
    } catch (NumberFormatException) {
      print(" Digite apenas valores numericos ");
    }
  } else {
    print("Digite valores válidos ");
  }

//===============================Segunda instancia =====================================================
  print("Digite nome ");
  String? entrada4 = stdin.readLineSync();
  print("Digite seu cpf ");
  String? entrada5 = stdin.readLineSync();
  print("Digite um número  para sua conta ");
  String? entrada6 = stdin.readLineSync();
  print("Digite o valor que deseja depositar ");
  String? entrada7 = stdin.readLineSync();

  if (entrada4 != null && entrada5 != null && entrada6 != null && entrada7 != null) {
    try {
      int numeroConta = int.parse(entrada6);
      double valorD = double.parse(entrada7);
      ContaBanco contaDeposito = new ContaBanco.depositar(nomeTitular: entrada1, cpf: entrada2, numeroConta: numeroConta, saldo: valorD);

      if (contaDeposito.getStatus() == true) {
        print(" A conta está aberta ! ");
      }

      print(" Digite o valor que deseja depositar ");
      String? valorEntrada = stdin.readLineSync();
      if (valorEntrada != null) {
        try {
          double valorDeposito = double.parse(valorEntrada);
          contaDeposito.depositar(valorDeposito);
        } catch (NumeberFormatException) {
          print("Digite valores válido ");
        }

     // valor de saque =======================================

        print("Digite o valor que você deseja sacar ");
        String? entradaSaque = stdin.readLineSync();
        if (entradaSaque != null) {
          try {
            double valorSaque = double.parse(entradaSaque);
            contaDeposito.sacar(valorSaque);
          } catch (NumberFormatException) {
            print("Digite apenas valores numericos ");
          }
        }
       
          print("\n${contaDeposito.toString()}\n");
        
        ;
      } else {
        print("Digite valores válidos");
      }
    } catch (NumberFormatException) {
      print(" Digite apenas valores numericos ");
    }
  } else {
    print("Digite valores válidos");
  }
}
