/**
 * Crie uma função fazerLogin que:

Simula um login bem-sucedido se o nome do usuário for "admin".
Lança uma exceção caso o nome seja diferente de "admin".
Use catchError ou try/catch para tratar o erro.
 */
void main() {
  login(login: 'adminmm').then((result) {
    print(result);
  }).catchError((onError) {
    print(onError);
  }).whenComplete(() {
    print('Encerrando o Sistema');
  });
}

Future<dynamic> login({required String login}) {
  print('fazendo validação...');
  return Future.delayed(Duration(seconds: 3), () {
    var result;

    if (login == 'admin') {
      result = 'login bem-sucedido';
    } else {
      result = Future.error('ERRO!!! login inválido');
    }

    return result;
  });
}
