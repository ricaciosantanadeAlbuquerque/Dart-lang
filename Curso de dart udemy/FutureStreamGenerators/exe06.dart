import 'dart:io';

/**
 * ✅ Execução paralela com Future.wait()
Aguarde o término de 3 tarefas simultâneas (simule: API, banco e arquivo).
 */
Future<void> main()async{
  final Future<List<Object>> result = Future.wait([
    buscaBanco(),
    consumoApi(),
    leituraArquivo(path: 'FutureStreamGenerators/texto.txt'),
  ], eagerError: true);
  /**
   * Future.wait() recebe uma lista de Future() e retorna um 
   * Future<List<resultados>>
   */

  print(await result);
}

Future<String> buscaBanco() {
  return Future.delayed(Duration(seconds:2),() => 'Dados encontrados com sucesso');
}

Future<List<Map<String, dynamic>>> consumoApi() {
  return Future.delayed(Duration(seconds: 4), () {
    return [
      {'nome': 'Ricacio', 'idade': 28},
      {'nome': 'Lucas', 'idade': 26},
      {'nome': 'Ana', 'idade': 46},
    ];
  });
}

Future<String> leituraArquivo({required String path}) {
  return Future.delayed(Duration(seconds: 5), () {
    return File(path).readAsString();
  });
}
