/**
 * Faça uma classe simulando um caixa eletrônico. Considere que senha seja "Java",
 * Caso o usuário forneça a senha correta apresente a mensagem "Senha válida.", 
 * caso contrário, "Senha Inválida", Se o usuário fornecer a senha incorreta por três vezes
 * seguidas, o programa deve apresentar uma mensagem "Cartão Cancelado".
 */
import 'Dart:io';

void main() {
  String senha = "Java";
  int cont = 0;
  for (var i = 0; i < 3; i++) {
    print("Digite a senha por favor");
    String? senhaText = stdin.readLineSync();

    if (senha == senhaText) {
      // os operadores relacionais retornam valores booleanos
      print("Senha válida.");
      break;
    } else {
      print("Senha Inválida");
      cont++;
    }

    if (cont >= 3) {
      print("\n====================");
      print("Cartão Cancelado");
      print("\n====================");
      exit(0);
    }
  }
}
