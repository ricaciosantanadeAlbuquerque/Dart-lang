/**
 * 3. Escreva	 um	 programa	 que	 verifique	 a	 validade	 de	 uma	 senha	 fornecida	
   pelo	 usuário.	 A	 senha	 válida	 é	 o	 número	 1234.	Devem	 ser	impressas	 as	
   seguintes	mensagens:
 */

import 'dart:io';

void main() {
  int senha = 1234;

  print("Informe o  a senha por favor ");
  String? entrada = stdin.readLineSync();
  int senhaInt = int.parse(entrada!);

  if (senha == senhaInt) {
    print("Acesso PERMITIDO !");
  } else {
    print("ACESSO NEGADO! ");
  }
}
