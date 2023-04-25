import 'pessoas.dart';

void main() {
  final gravidade = 9.8; // constante em tempo de execução;
  int tempo = 5;
  double velocidade = gravidade * tempo;

  ///gravidade = 10; ERRO! gravidade não pode ter seu valor sobreposto;

  for (var i = 0; i <= 5; i++) {
    final indice = i;
    print(indice);
  }

  /**
   *  índice é uma constate final, e ela não está variando. O que ocorre, é que a cada loop  do nosso laço for()
   *  'índice' está sendo recriada ou sobreposta, com o valor atual de i;
   *  passo a  passo ( Cria - mostra Valor - recria - mostra valor atual ......)
   */
  Pessoas05 pessoa = Pessoas05(nome: 'Ana', familiares: ['Ana', 'Carmem']);
  pessoa.nome = 'Lucas';
  //pessoa.familiares = ['', '']; Não é permitido, porque o atribulto familiares é final, por tanto é constante.
}
