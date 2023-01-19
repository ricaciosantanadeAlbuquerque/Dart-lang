import "dart:io";
// sistema bancário

void main(List<String> args) {
  String? opcao = "sim";
   double saldo = 0.0;
  do {
    print("===========MENU===========");
    print("Digite um para abrir uma conta ");
    print("Digite dois para depositar ");
    print("Digite três para  sacar !");
    print("===========================");
    String? entrada = stdin.readLineSync();
    int op = int.parse(entrada!);
   
    switch (op) {
      case 1:
        print("Conta aberta com sucesso! ");
        print("O valor do saldo é ${saldo=0.0}");
        break;
      case 2:
        print("Digite o valor que deseja depositar !");
        String? valorEntrada = stdin.readLineSync();
        saldo = double.parse(valorEntrada!);
        print("O saldo Atual é de ${saldo}");
        break;
      case 3:
        if (saldo > 0 && saldo != null) {
          print("Digite o valor que deseja sacar !");
          String? novoValor = stdin.readLineSync();
          double saque = double.parse(novoValor!);

          if (saque < saldo) {
            saldo = saldo - saque;
            print("O valor atual do saldo é ${saldo}");
          } else {
            print("Você não possui saldo suficiente para o saque.");
            print("Valor do saque ${saque}");
            print("Valor do saldo ${saldo}");
          }
        }
        break;
      default:
        print("Valor fora da faixa !");
        exit(0);
        break;
    }

    print("Deseja continuar esta operação? digite [sim] ou [nao] ");
     opcao = stdin.readLineSync();
  } while (opcao == "sim");

  print("==========FIM=========");
}
