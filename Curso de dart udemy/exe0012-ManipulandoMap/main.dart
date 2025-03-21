void main() {
  Map<String, dynamic> pessoa = {
    'nome': 'Ricacio',
    'idade': 29,
    'altura': 1.72,
    'cidade': 'recife'
  };

  print(pessoa);

  // alterando o valor da chave cidade

  pessoa['cidade'] = 'João Pessoa';
  print('');

  print(pessoa);

  pessoa['profissao'] = 'Analista de Sistemas';

  print('');
  
  print(pessoa);
}

/**
 * Crie um Map<String, dynamic> chamado pessoa, com as chaves: nome, idade, altura, e cidade.

Imprima todos os valores.
Altere o valor de cidade.
Adicione uma nova chave chamada "profissão"
 */
