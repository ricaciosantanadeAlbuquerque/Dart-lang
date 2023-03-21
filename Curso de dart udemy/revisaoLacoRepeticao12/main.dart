/**
 * Faça um algoritmo que solicita uma senha, simulando um caixa eletrônico. Considere que a senha e java, caso o usuário forneça a       senha correta apresente a mensagem senha Válid, caso o contrário senha inválida. Se o usuário  fornecer a senha  incorreta três vezes seguidas, o programa deve apresentar a mensagem  CARTÃO CANCELADO 
 */
import 'dart:io';

main() {
  int cont = 0;
  String senha = '';
  do {
    print(" Digite a senha por favor ");
    String? senhaEntrada = stdin.readLineSync();
    if (senhaEntrada != null) {
      senha = senhaEntrada;

      if (senha == 'java') {
        print('Senha válida');
        break;
      } else {
        print('Senha inválida');
        cont++;
        if (cont == 3) {
          print(" CARTÃO CANCELADO ");
        }
      }
    }
  } while (senha != 'java');
}
