import 'endereco.dart';
import 'pessoa.dart';

void main(List<String> args) {
  Endereco endereco = Endereco(rua: 'Manoel Arruda Cavalcante ', numero: '84 ap 104 bloco 05', bairro: 'Manaíra', uf: 'PB');

  Pessoa pessoa = Pessoa(nome: 'Ricacio', idade: '28', sexo: 'Masculino', endereco: endereco);

  print(pessoa.endereco.toString());

  /**
   * O objeto pessoa tem uma navegabilidade em memória para para o objeto endereco e sabe chegar até ele  
   */

  endereco.adicionarTitularDoEndereco(pessoa);
  print('');
  print(endereco.pessoa.toString());

  // Assim como o objeto endereço tem uma navegabilidade em memória para o objeto pessoa;

  /**
   * É necessário que o atributo da classe que vai receber o objeto do mesmo tipo o receba!!! Seja por construtor ou via método.
   * se não, vai dar erro! Porque Não passaram de variáveis/atributos vazios!!!!!! declaradas mas não inicializadas.
   */
}
