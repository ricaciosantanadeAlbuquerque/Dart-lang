/**
 * Classe utilizada para representar um conjunto de números, em que podemos
 * localizar o valor do maior elemento, menor elemento e
 * media dos elementos do vetor.
 */

/// classe imutável
class Numero {
  final List<int> lista; // não pode ser 'static const' porque o valor será passado pelo construtor, se fosse 'static const' teria que ser declarado e inicializado em tempo de compilação, e não em tempo de execução. traduzaindo teria que ser declarado e inicializado na classe.
  const Numero({required this.lista});

  void localizarMaiorNumero() {
    var maior = 0; // começa  com o menor valor, e termina com o maior  valor da lista.
    for (var j in lista) {
      if (maior < j) {
        maior = j;
      }
    }
    print("O  maior valor é  ${maior} ");
  }

  void localizarMenorNumero() {
    var menor = 100000; // começa  com o maior valor possível e termina com o menor valor  da lista.

    for (var i in lista) {
      if (i < menor) {
        menor = i;
      }
    }
    print("O menor valor: ${menor}");
  }

  void calcularMedia() {
    var acumuladora = 0;
    int cont = 0;

    for (int i = 0; i < this.lista.length; i++) {
      cont++;
      acumuladora += lista[i]; // a cada loop o valor anterior será somado com o atual e o resultado se guardado na variável 'acumuladora'.
    }
    var media = acumuladora / cont;
    print("Média: ${media} ");
  }
}
