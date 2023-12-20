import 'constate_final.dart';

void main() {
  final gravidade = 9.8; // constante em tempo de execução !
  int tempo = 5;
  double velocidade = gravidade * tempo;

  print('Velocidade máxima: ${velocidade}');

  tempo = 10;

  //gravidade = 12; Erro ! valor final

  velocidade = gravidade * tempo;
  print('Velocidade máxima: ${velocidade}');

  for (int i = 1; i <= 3; i++) {
    final indice = i;
    print('Contagem: $indice'); // a cada loop indice esta sendo declarado e inicializado em tempo  de execução !!
  }

  var pessoa = Pessoa('Lucas', ['ana', 'dora']); // kinhas de instanciamento

  pessoa.nome = 'Fernando';

  // pessoa.familiares = [];  constate final ! não pode ser alterado ou sobreposto. A referência para a lista neste atrinuto;

  pessoa.adicionar('João');

  print(pessoa.familiares);

  // A referência ao atributo familiares não pode variar porém, o conteúdo da lista pode !
  // o ponteiro para o lista não muda, mas os elementos da lista podem variar.
}
