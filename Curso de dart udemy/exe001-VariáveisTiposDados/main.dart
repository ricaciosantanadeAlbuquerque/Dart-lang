/**
 * Crie um programa que declare uma variável para armazenar o nome de um usuário, 
 * e outra para sua idade, e se ele for maior de idade. Exiba essas informações no console.
 */

import 'dart:io';

void main() {
  var nome;
  var idade;

  print('Digite seu nome.');
  nome = stdin.readLineSync();
  print('Digite sua idade.');
  idade = stdin.readLineSync();

  if (idade != null  && idade.isNotEmpty) print('$nome é maior de idade com $idade anos');
  
}
