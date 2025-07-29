/** Função Future<String> carregarMensagem()
Deve retornar "Carregado" após 1 segundo

Use setUpAll() para iniciar um log antes de todos os testes

Use tearDownAll() para finalizar esse log

Escreva um test('mensagem carregada', () async { ... }) */

Future<String> carregarMensagem() async {
 return await Future.delayed(Duration(seconds: 1), () {
    return 'Carregado';
  });
}
