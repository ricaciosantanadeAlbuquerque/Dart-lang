/**
 * 9. Exibindo mensagens antes e depois de um await
Escreva uma função que exibe uma mensagem antes de esperar um Future.delayed
 e outra depois, para mostrar como o await funciona no fluxo do programa.
 */

void main() {
  mensagem();
}

void mensagem() async {
  print('Antes de Esperar ...\n');

  for (var i = 0; i < 10; i++) {
    await Future.delayed(Duration(seconds: i), () {
      print('$i...');
    });
  }

   print('\nProcesso completo');
}
