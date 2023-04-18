import 'pessoa.dart';

void main() {
  final gravidade = 9.8;
  // gravidade = 11;  não podemos sobrepor  variáveis final  elas são constantes.
  int tempo = 5;
  double velocidade = gravidade * tempo; //  v = g * t
  print(velocidade);

  for (var i = 1; i <= 3; i++) {
    final indice = i; // valor constante;
    print("contagem : $indice ");
  }
  // neste caso, 'índice' que é uma 'constante final'  está sendo recriada ou melhor sobreposta a cada loop.
  // No primeiro loop,  'indice' foi declarado e inicializada com 'i' valendo 1. No próximo loop indice será recriado porém  com 'i' valendo 2. Ela 'indice' não está variando, e sim sendo sobreposta a cada loop.

  var pessoa = PessoFinal(nome: 'Ana', familia: ['Carmen', 'Bia']);
  // pessoa.familia = ['','']  não pode ser redefinido porque é final
  pessoa.nome = 'lia';

  print(pessoa.nome);
  print(pessoa.familia);
}
