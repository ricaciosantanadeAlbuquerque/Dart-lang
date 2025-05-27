/**
 * 5. Tratando erros com catchError()
Crie um Future que lança uma exceção e trate esse erro usando .catchError().
 */

void main() {
  excecao()
      .then((onValue) {
        print('Resultado:$onValue');
      })
      .catchError((onError) {
        print('Resultado:$onError');
      })
      .whenComplete(() {
        print('Programa Finalizado');
      });
}

Future<dynamic> excecao() => Future.error('ERRO! causando propositalmente.');
