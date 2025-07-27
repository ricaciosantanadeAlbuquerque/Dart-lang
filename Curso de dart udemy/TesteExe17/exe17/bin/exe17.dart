import 'dart:developer';

import 'package:exe17/exe17.dart';

void main(List<String> arguments) {
  final conjunto = ConjuntoSeguro<int>();
  conjunto
    ..adicionar(15)
    ..adicionar(22)
    ..adicionar(33);

  log('QTD Itens: ${conjunto.tamanho()}');
  log('Contem o Item ? ${conjunto.contem(33) ? 'Sim' : 'Nao'}');
}
