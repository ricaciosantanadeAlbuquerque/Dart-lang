import 'dart:developer';

import 'conta_bancaria.dart';

void main(List<String> args) {
  ContaBancaria contaBancaria = ContaBancaria(); // objeto conta Bancaria

  contaBancaria..depositar(valor: 1500);
  log('Extrato Bancário, ${contaBancaria.extrato()}');
  // contaBancaria..sacar(valor: -1); erro assertionError
  contaBancaria.sacar(valor: 500);
  var extrato = contaBancaria.extrato();
  log('Extrato Bancário: $extrato');
}
