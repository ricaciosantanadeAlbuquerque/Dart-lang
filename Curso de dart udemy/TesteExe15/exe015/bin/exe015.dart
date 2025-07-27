import 'dart:developer';

import 'package:exe015/exe015.dart' as exe015;

void main(List<String> arguments) {
  log('União de conjuntos ${exe015.uniao({1, 2, 3}, {4, 5, 6})}');
  log(
    'Diferença entre os conjuntos n1 e n2: ${exe015.diferenca(n1: {1, 2, 3}, n2: {3, 1, 5})}',
  );
}
