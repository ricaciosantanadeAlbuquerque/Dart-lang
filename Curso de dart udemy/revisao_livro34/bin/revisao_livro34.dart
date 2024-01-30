// Construa uma função que recebe uma data (DateTime)dd/MMM/Y e retorna uma String dd/MMM/y

import 'package:intl/intl.dart';

void main(List<String> arguments) {
  print(DateTime.now().runtimeType);
  print('');
  print(dataMesAno(DateTime.now()));
}
/// O Método format() da classe DateFormat() já faz a converção para String

String dataMesAno(DateTime date) {
  var result = DateFormat('dd / MMM / y').format(date);
  print(result.runtimeType);
  return result;
}
