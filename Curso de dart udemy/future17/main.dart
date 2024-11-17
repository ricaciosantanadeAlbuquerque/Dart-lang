/**
 * Crie uma lista de funções que simulam tarefas independentes, cada uma retornando um valor diferente:
 * Tarefa 1: "Resultado 1" (1 segundo).
 * Tarefa 2: "Resultado 2" (2 segundos).
 * Tarefa 3: "Resultado 3" (3 segundos). Use Future.wait() para obter os resultados de todas as tarefas em um array e exibi-los.
 */

void main() async {
  // linhas de instânciamento  cada tarefa é um objeto 
  Future<String> tarefa1 =  Future.delayed(Duration(seconds: 1), () => 'Resultado 1');
  Future<String> tarefa2 =  Future.delayed(Duration(seconds: 2), () => 'Resultado 2');
  Future<String> tarefa3 =  Future.delayed(Duration(seconds: 3), () => 'Resultado 3');

  List<String> listResult = await Future.wait([tarefa1, tarefa2, tarefa3]);

  print('Lista de Resultado: ${listResult}');



  /**
   * O construtor Static Future.wait(), Deve receber como argumento uma lista de Futures não concluidas,
   * Future.wait() vai aguardar o fim de cada Future da lista. Então só assim retornará uma lisa de resultados 
   * de cada Future, na mesma ordem em que elas foram passadas na lista. 
   */
}
