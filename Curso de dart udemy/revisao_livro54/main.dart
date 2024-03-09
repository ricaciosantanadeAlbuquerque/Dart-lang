import 'endereco.dart';
import 'pessoa.dart';

void main() {
  var endereco = Endereco(
    rua: 'Manoel Arruda cavalcante',
    numero: 84,
    bairro: 'Manaíra',
    uf: 'Paraíba',
  );

  Pessoa pessoa = Pessoa(nome: 'Ricacio', idade: 31, sexo: 'Masculino', endereco: endereco);

  endereco.adicionarPessoa(pessoa);

  print(pessoa.endereco.toString()); // O objeto pessoa tem uma navegabilidade até endereço'

  print('');

  print(endereco.pessoa.toString()); // O objeto endereco tem uma navegabilidade ate pessoa,
}
