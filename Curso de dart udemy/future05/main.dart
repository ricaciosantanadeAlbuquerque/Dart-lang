Future<void> main(List<String> args)async{
  contagem(tempo: 5);
  print(await tarefa(tempo: 6));
}

void contagem({int tempo = 3}){
  print('Carregando...');
  for (var i = 1; i <= tempo; i++) {
     Future.delayed(Duration(seconds: tempo), () {
      print('${i * 33}');
      if (i == tempo) print('Concluido');
    });
  }
}

Future<String>tarefa({int tempo = 1})async{
  return await status(tempo);
}


Future<String>status([int tempo = 1]){
  return Future.delayed(
      Duration(seconds: tempo), () => 'Primeira Tarefa');
}
