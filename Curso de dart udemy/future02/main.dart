//Future é um objeto que retorna um valor ou um ERRO!

void main(List<String> arg) async {
  //Código assíncrona
  contagemAwait(segundos: 5);
  //contagem(segundos: 5);
  //Código síncrona
  for (var i = 1; i <= 10; i++) {
    print('Contagem ${i}');
  }
  // Código Assíncrona
  print(await tarefas(tempo: 20));

  execao(tempo: 11);
}

// ------------------------------- Futuro Atrasado esperando -------------------
void contagemAwait({int segundos = 3}) async {
  print('Carregando');
  for (var i = 1; i <= segundos; i++) {
    await Future.delayed(Duration(seconds: i), () {
      print('${i * 33} %');
      if (i == segundos) print('\nConcluido');
    });
  }
  print('------------FIM--------------');
}

// ------------------------------- Futuro Atrasado -----------------------------

Future<String> tarefas({int tempo = 10}) async {
  var response = await status(tempo);
  return 'Status: ${response}';
}

Future<String> status([int tempo = 10]) async {
  return await Future.delayed(Duration(seconds: tempo), () {
    return 'Primeira tarefa finalizada';
  });
}

void contagem({int segundos = 3}) {
  print('Carregando');
  for (var i = 1; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i), () => print('${i * 33} %'));
    if (i == segundos) print('\n Concluido');
  }
  print('--------------FIM!---------------');
}

Future<void> execao({int tempo = 1}) async => await Future.delayed(
    Duration(seconds: tempo), () => throw Exception('ERRO! Intencional.'));

/**
 * Future é  um objeto que retorna um valor ou um erro.
 * Mesmo nesta função que execunta um delayed() / use await async eee marque o retorno como Future.
 * pois isto dará um melhor desempenho ao código. 
 *    
 */