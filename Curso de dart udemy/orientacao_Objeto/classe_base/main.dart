/**
 * 1️⃣ Criando uma Classe Básica Crie uma classe Pessoa com os atributos:
nome
idade
cidade
Crie um método que exiba os dados da pessoa
Modifique a classe Pessoa do exercício anterior para ter:
Um construtor nomeado que permita criar um objeto informando
apenas o nome e idade, definindo cidade como "Desconhecida" por padrão

 */

import 'pessoa.dart';

void main() {
  Pessoa pessoa1 = new Pessoa(nome: 'Ricacio', idade: '29');
  var pessoa2 = Pessoa(nome: 'Ana', idade: '35', cidade: 'João Pessoa');

  print(pessoa1.toString());
  print(pessoa2);

  /// construtor nomeado

  var pessoa3 = Pessoa.resumida(nome: 'Karina', idade: '22');
  
  print('');
  print(pessoa3);
}
