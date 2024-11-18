import 'dart:io';

void main() {
  print('----- Olá Seja Bem vindo! ------');
  print('Digite um número');
  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    if (entrada.isNotEmpty) {
      try {

        num num1 = num.parse(entrada);
        print(bancoMap(key: num1.toInt()) ?? 'O Valor não Existe');

      } catch (e, s) {
        print('Exceção:$e');
        print('Stack Trace: $s');
      }
    } else {
      print('ERRO! valor Vazio');
    }
  } else {
    print('ERRO valor Nulo');
  }
}

dynamic bancoMap({required int key}) {
  var result;
  Map<int, String> dados = {
    1: 'ricacio',
    2: 'Lucas',
    3: 'Ana',
    4: 'Matheus',
    5: 'Dora'
  };

  if (dados.containsKey(key)) {
    result = dados[key];
  }

  return result; // retornamos o valor da chave
}
