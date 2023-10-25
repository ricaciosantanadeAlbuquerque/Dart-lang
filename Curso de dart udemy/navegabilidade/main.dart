import 'endereco33.dart';
import 'pessoa33.dart';

void main() {

  final pessoa = Pessoa33(
    nome: 'Ricacio',
    idade: 31,
    salario: 1602,
  );

  final endereco = Endereco33(rua: 'Rua Manoel Arruda Cavalcante', uf: 'PB', bairro: 'Manaíra', cidade: 'João Pessoa', pessoa33: pessoa);

  pessoa.endereco33 = endereco;

  print(pessoa.endereco33.toString());
  print('');
  print(endereco.pessoa33.toString());

  // Dupla Navegabilidade por associação.
  //Tanto pessoa pode ver endereco33() como endereço pode ver pessoa33();
}
