import 'edereco.dart';
import 'pessoa.dart';

/**
 * NAVEGAÇÃO DUPLA.
 * Associação com dupla navegabilidade, onde endereço pode  ver tudo de pessoa, e pessoa pode ver tudo de endereço.
 * tudo! Agora, se vai está visivel ou não, depende dos  modificadores de visibilidade " private _ public"
 */
void main() {
  Pessoa pessoa1 = Pessoa(nome: 'Lucas', idade: 22, sexo: 'Masculino', dormindo: true);

  Endereco endereco = Endereco(rua: 'Manoel Arruda', numero: 84, bairro: 'Manaíra', estado: 'PB', pessoa: pessoa1);

  pessoa1.addEndereco(endereco);

  print(pessoa1.endereco.consultar());
  print('');
  print(endereco.pessoa.toString());

  // Pessoa1 tem uma navegabilidade na memória por associação, e sabe chegar até endereço. Assim como endereco, tem uma navegabilidade na memória para pessoa, e sabe chegar até pessoa e, utilizar seus métodos e atributos.
}
