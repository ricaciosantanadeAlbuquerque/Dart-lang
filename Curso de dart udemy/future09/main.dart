/**
 * Exercício 3: Processar Dados com Vários Futuros
Simule o cálculo de três tarefas assíncronas (por exemplo, somar números) e use Future.
wait para aguardar todas as operações. Depois, exiba a soma dos resultados.

Dicas:

Crie três funções que retornam Future<int>.
Use Future.wait para obter os resultados e calcular a soma.
 */
void main() async {
  Future<int> soma01 = Future.delayed(
      Duration(seconds: 2), () => 20 + 50); // linha de instânciamento
  Future<int> soma02 = Future.delayed(Duration(seconds: 3), () => 30 + 3);
  Future<int> soma03 = Future.delayed(Duration(seconds: 4), () => 50 + 50);

  List<int> result = await Future.wait([soma01, soma02, soma03]);

  print("Soma dos valores de $result");
  print(result.reduce((ant, atu) => ant + atu));
}


/**
 * Future.wait([]) tem que receber uma lista de Future eeee retorna uma lista de resultados  
 */