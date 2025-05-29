/**
 * 7. Esperando múltiplos Futures com Future.wait
Crie três funções que retornam Future<String> com 
tempos diferentes. Use Future.wait() 
para esperar todas finalizarem e exibir os resultados.
 */

Future<void> main()async{
  final Future<List<String>> listaResultados =   Future.wait([
    funcao01(),
    funcao02(),
    funcao03(),
  ]);

  print(await listaResultados); // await  esperando listaresultados está pronta

  /**
   *  Future.wait() espera receber uma lista de processos Future, E retorna um
   *  Future contendo  lista de resultados 
   *  
   */
}

Future<String> funcao01() =>
    Future.delayed(Duration(seconds: 2), () => 'Primeira Tarefa');

Future<String> funcao02() =>
    Future.delayed(Duration(seconds: 6), () => 'Segunda Tarefe');

Future<String> funcao03() =>
    Future.delayed(Duration(seconds: 8), () => 'Terceira Tarefa');

/**
 * Future.wait() == Futuro esperado :  recebe uma lista de Futures processos e retorna
 *  um Future contendo uma  lista de resultados
 */