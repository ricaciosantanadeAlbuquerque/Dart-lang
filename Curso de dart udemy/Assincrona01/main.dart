/// Future:
///  É um objeto que retorna um valor ou um erro, Future é uma execuçao assincrona/future.
///  Resultado de uma ação futura.

 main() async { // para chamar uma função assincrona, esta função deve ser marcada como async
novaTarefa(tempo: 6);
print(await tarefa(tempo:4)); // await deve esperar, espera o retorno do objeto Future<String>
contagemAssincrona(tempo:4);
contagemSincrona();
print(await status2(10));

}

///Assincrona
void contagemAssincrona({int tempo = 3}){
  print('Contagem...');
  for( int i = 1; i <= tempo;i++){
    Future.delayed(Duration(seconds:i),() {
      print('${i * 33} Assincrona');
      if(i == tempo) print('\n Concluido');
    },);
  }
}
/**
 * Após a Duração de i  será executado a função
 */

/// Sincrona
void contagemSincrona({int tempo = 3}){
  print('Carrgeando...');
  for(var i = 1; i <= tempo; i++){
    print('${i * 33}, Sincrona');
    if(i == tempo) print('Concluido');
  }
}

/**
 * função sincrona é executada de uma só vez;
 */


Future<String> tarefa({int tempo = 3})async{
  return await status(tempo);
}

/**
 * Com status() retornando  uma Future<String>, precisamos marca essa função tarefa como async eee status com await.
 * A função que evoca tarefa deve ser marcada com  async ee o retorno de tarefa como await
 * async ==  marca a função como Assincrona.
 * await ==  esperar
 *
 */

Future<String> status([int tempo = 3]){
  return Future.delayed(Duration(seconds:tempo),() => 'Primeira Tarefa finalizada!\n');
}

void novaTarefa({int tempo = 3}){
  Future.delayed(Duration(seconds: tempo),() => print('Segunda tarefa finalizada com sucesso'));
}

/**
 * Como não estamos retornando um objeto Future() para a função main(),Não há necessidade de marca a main como async
 *  nem há necessidade de setar  novaTarefa() como await. 
 */


Future<String>? status2([int tempo = 3]){
  try{
    if(tempo < 4) throw Exception('ERRO! tempo insuficiente');
    return Future.delayed(Duration(seconds: tempo), () => 'Teste Future retornado');
  }catch(e){
    print('$e');
    return null;
  }
}