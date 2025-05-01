import 'dart:io';

/**
 * 9️⃣ Lidando com Exceções
Crie um programa que solicita um número ao usuário e:
Trata o erro caso o usuário digite um valor não numérico.
Caso o número seja negativo, lance uma exceção personalizada "Número inválido!"
 */
class NumeroNegativo implements Exception {
  final String mensagem;

  NumeroNegativo({this.mensagem = 'valor não identificado'});

  @override
  String toString() => 'Número Negativo: $mensagem';

}

void main() {
  print('Digite um valor númerico');
  String? entradaValor = stdin.readLineSync();

  if (entradaValor != null && entradaValor.isNotEmpty) {
    try {
      num numero = num.parse(entradaValor);

      if (numero.isNegative) throw NumeroNegativo(mensagem: entradaValor);

      print('valor numérico é $numero');

    } on FormatException {
      print('ERRO!! o valor $entradaValor não é um valor numérico');
    } on NumeroNegativo catch (e) {
      print('ERRO! o valor digitado é negativo $e');
    } catch (e) {
      print('ERRO inesperado $e');
    }
  } else {
    stdout.write('Digite um valor válido');
    exit(0);
  }
}
