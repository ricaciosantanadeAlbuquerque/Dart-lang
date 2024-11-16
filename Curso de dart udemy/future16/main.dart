/**
 * Implemente um pipeline de processamento de dados:

A função carregarDados retorna "Dados carregados!" após 3 segundos.
A função processarDados recebe a mensagem da função anterior e retorna "Dados processados!" após 2 segundos.
Exiba as mensagens no console em sequência usando async e await.
 */

void main() async {
  var resultDados = await carregarDados();
  print(resultDados);

  try {
    var resultProcessaDados = await processarDados(dados: resultDados);
    print(resultProcessaDados);
  } catch (e,s) {
    print('Exceção: $e');
    print('Stack Trace: ${s}');
  } finally {
    print('FIM !! programa');
  }
}

Future<String> carregarDados() =>
    Future.delayed(Duration(seconds: 3), () => "Dados carregados!");

Future<dynamic> processarDados({required String dados}) {
  var resultado;
  if (dados == "Dados carregados!") {
    resultado =
        Future.delayed(Duration(seconds: 2), () => 'Dados processados!');
  } else {
    resultado = Future.error('ERRO! Dados Inválidos');
  }

  return resultado;
}
