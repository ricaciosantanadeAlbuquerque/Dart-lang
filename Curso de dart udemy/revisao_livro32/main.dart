import 'dart:io';

/**
 * Crie uma funcao  que receba um valor N inteiro, e faça uma contagem até o valor N  Exemplo N == 5 .... 12345 depois 2345 depois 345 e assim 
 * até o valor N
 */

void executarFuncao(void Function(num, String) p) {
  print(''' 

    Digite
     um 
     Valor!
  
  
  ''');

  String? entradaValor = stdin.readLineSync();
  print('');
  if (entradaValor != null && entradaValor.isNotEmpty) {
    num valor = num.tryParse(entradaValor) ?? 0;

    p(valor, entradaValor);
  }
}

void main() {
  executarFuncao(contagem);
}

void contagem(num n, String j) {
  print('');
  print(j);
  print('');
  
  for (var j = 1; j <= n; j++) {
    for (var i = j; i <= n; i++) {
      print(i);
    }
    print('\n');
  }
}
