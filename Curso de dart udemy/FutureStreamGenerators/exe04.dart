/**
 * ✅ Processamento com .then()
Transforme "Ricacio" em "Olá, Ricacio" com .then().
 */
void main() {
  try {
    nome()
        .then((onValue) {
          print('Olá $onValue');
        })
        .catchError(
          (onError) {
            print('ERRO: $onError');
          },
          ///  filtrar apenas strings como erro, por exemplo
          test: (error) => error is String, // se true entao exception
        )
        .whenComplete(() {
          print('Sempre é executada');
        });
  } catch (e, s) {
    print('Excecao:$e');
    print('Stack Trace:$s');
  }
}

Future<String> nome() {
  return Future(() {
    return 'Ricacio';
  });
}
