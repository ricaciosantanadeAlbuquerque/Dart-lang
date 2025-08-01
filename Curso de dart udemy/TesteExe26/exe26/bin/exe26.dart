import 'dart:developer';

import 'package:exe26/exe26.dart' as exe26;

void main(List<String> arguments) {
  log(exe26.aprovado(map: {'Ana': 8}, chave: 'Ana') ? 'Sim está aprovado,' : 'Reprovado');
}
