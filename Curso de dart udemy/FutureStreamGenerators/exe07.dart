/**
 * 🔐 Tratamento de erro com catchError
Crie uma função que pode lançar um erro com Future.error,
 e trate o erro usando .catchError para exibir uma mensagem personalizada.
 */

void main(List<String> args) {
  erro()
      .then((onValeu) {
        print('Resultado: $onValeu');
      })
      .catchError((onError) {
        print('ERRO: $onError');
      },
      test:(error) => error is String 
      );
}

Future<String> erro() => Future.error('ERRO! proposital');
