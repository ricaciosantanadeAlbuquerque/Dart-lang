/**
 * Escreva	 um	 programa	 para	 ler	 o	 ano	 de	 nascimento	 de	 uma	 pessoa	 e	
  escrever	 uma	 mensagem	 que	 diga	 se	 ela	 poderá	 ou	 não	 votar	 este	 ano	
 */
import 'dart:io';

void main() {
  print("Digite por favor seu ano de nascimento ");
  String? entrada = stdin.readLineSync();
  int anoNascimento = int.parse(entrada!);
  int idade = 2022 - anoNascimento;

  if (idade < 16) {
    print(" Você não pode votar ");
  } else if ((idade >= 16 && idade < 18) || (idade > 70)) {
    print("O voto é opcional ");
  } else {
    print("voto obrigatório ");
  }
}
