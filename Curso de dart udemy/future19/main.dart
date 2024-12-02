void main(List<String> args)async{
  /// Sincrona !!!
  contagem(segundos: 5);

  /// Assincrona
  print(await tarefa(tempo: 6));
}

///
/// * Função Sincrona !
///

void contagem({int segundos = 3}) {
  print('Contagem...\n');

  for (var i = 1; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i), () {
      print('${i * 33}%');
      if (i == segundos) print('\nConcluido!');
    });
  }
}

tarefa({int tempo = 3})async{
  var result = await statu(tempo);
  return 'Status: ${result}';
}

Future<String> statu([int tempo = 1]) {
  return Future.delayed(Duration(seconds: tempo), () => 'Primeira Tarefa !!');
}
