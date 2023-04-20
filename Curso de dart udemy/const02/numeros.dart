/**
 * Classe utilizada para representar um conjunto de números, em que podemos
 * localizar o valor do maior elemento, menor elemento e
 * media dos elementos do vetor.
 */
class Numero {
  final List<int>
      lista; // não pode ser 'static const' porque o valor será passado pelo construtor, se fosse 'static const' teria que ser declarado e inicializado em tempo de compilação, e não em tempo de execução. traduzaindo teria que ser declarado e inicializado na classe.
  const Numero({required this.lista});

  void localizarMaiorNumero() {
    var maior = 0; // começa  com o menor valor, e termina com o maior  valor da lista
    for (var j in lista) {
      if (maior < j) {
        maior = j;
      }
    }
    print("O  maior valor é  ${maior} ");
  }
}

void localizarMenorNumro() {
  var menor = 100000;
}
