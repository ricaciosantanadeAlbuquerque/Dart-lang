import 'package:exe019/exe019.dart' as exe019;
import 'dart:io';

void main(List<String> arguments) {
  print('Digite seu nome por favor !');
  String? entradaNome = stdin.readLineSync();
  assert(entradaNome != null && entradaNome.isNotEmpty);
  print('ID Usuário ${exe019.paraMaiusculo(texto: entradaNome!)}');
}
