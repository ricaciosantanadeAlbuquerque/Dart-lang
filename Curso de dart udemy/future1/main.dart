/**
 * Future é um objeto que retorna um valor(value) ou um erro(error).
 * Este objeto com  valores ou não é resultado de um processamento assincrona /
 * futura
 * 
 */
void main() async {
  contagem(segundos: 4);
  print(await tarefa(tempo: 5));
  excecao(7);
}

void contagem({int segundos = 3}) {
  print('Carregando');

  for (var i = 1; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i), () {
      print('${i * 33} %');
      if (i == segundos) print('Carregamento comcluido');
    });
  }
}

Future<String> tarefa({int tempo = 1}) async {
  var result = await status(tempo);
  return 'Status: $result';
}

Future<String> status([int tempo = 1]) => Future.delayed(
  Duration(seconds: tempo),
  () => 'Primeira Tarefa finalizada!',
);

void excecao([int tempo = 1]) => Future.delayed(
  Duration(seconds: tempo),
  () => throw Exception('Erro intensional'),
);
