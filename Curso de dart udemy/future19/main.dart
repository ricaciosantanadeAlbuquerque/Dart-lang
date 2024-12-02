import 'dart:io';

void main(List<String> args) async {
  /// Sincrona !!!
  contagem(segundos: 5);

  /// Assincrona
 // print(await tarefa(tempo: 6));

  // Provocando erro !!

  //print(await tarefa(tempo: 3));

  List<Future> objectFuture = [tarefa(tempo: 6), tarefa(tempo: 5)];

  print(await Future.wait(objectFuture)); 
  /**
   * Future.wait == Futuro esperado.
   * Recebe uma lista de Future e retorna uma lista de resultados.
   * 
   *  Construtores nomeados
   * Future.delayed()
   * Future.value()
   * Future.error()
   * Future.sync()
   * 
   */
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

Future<String> tarefa({int tempo = 3}) async {
  var result = await statu(tempo) ?? exit(0);
  return 'Status: ${result}';
}

Future<String>? statu([int tempo = 1]) {
  try {
    if (tempo < 4) throw Exception('Tempo insulficiente');
    return Future.delayed(Duration(seconds: tempo), () => 'Primeira Tarefa !!');
  } catch (e, s) {
    print('Exceção: ${e}');
    print('Stack Trace: ${s}');
    return null;
  }
}
