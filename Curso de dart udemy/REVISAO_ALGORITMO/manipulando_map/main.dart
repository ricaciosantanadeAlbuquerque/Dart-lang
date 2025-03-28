/**
 * Crie um Map<String, dynamic> chamado pessoa, com as chaves: nome, idade, altura, e cidade.
 * Imprima todos os valores.
*  Altere o valor de cidade.
*  Adicione uma nova chave chamada "profissão"
 */
void main() {
  Map<String, dynamic> pessoa = {
    'nome': 'Ricacio',
    'idade': 32,
    'altura': 1.72,
    'cidade': 'João Pessoa'
  };

  print('Informações iniciais:');
  pessoa.forEach((key, value) {
    print('$key: $value');
  });

  pessoa['cidade'] = 'Recife';
  pessoa['profissao'] = 'Dev flutter junior';

  print('\n Informações Atualizadas:');
  pessoa.forEach((key, value) {
    print('$key:$value');
  });
}
