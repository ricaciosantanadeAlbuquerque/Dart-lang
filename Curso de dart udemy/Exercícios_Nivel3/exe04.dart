/**
 * 4 - Crie um programa que lê 6 valores inteiros pares e, em seguida, mostre na tela os valores lidos na ordem 
inversa. Atenção: caso o usuário digite um valor ímpar, deve desconsiderá-lo e fazer novamente a leitura até 
atingir a leitura dos valores inteiros pares.
 */
import 'Dart:io';

main() {
  dynamic array = [];

  for (int j = 0; j < 6;) {
    print("Digite um valor inteiro por favor");
    String? entrada = stdin.readLineSync();
    int numero = int.parse(entrada!);

    if (numero % 2 == 0) { // se numero divido por 2 o resto é 0 então e par 
      array.add(numero);
      j++;
      /**
       *  O indixe j é incrementado dentro da condição porque ao entrar nesta condição sabemos que o valor é par, então o array adiciona o valor e j recebe mais um, ficando cada vez mais perto  de quebar o loop. Se o valor não for par!!! então o array não irá adicionar este valor, e j não receberá seu incremento continuando com  o mesmo valor.
       * Praticamente o loop impar não conta. 
       */
    }
  }
  print("===========================================");
  print(array);
  print("===========================================");
  for (int i = 5; i >= 0; i--) {
    print("$i == ${array[i]}");
  }
}
