/**Future<String> carregarDados()
Simule carregamento com Future.delayed

Retorne 'ok'

No teste: */

Future<String> carregarDados() => Future.delayed(Duration(seconds: 5), () => 'ok');
