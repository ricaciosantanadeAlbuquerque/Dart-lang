import 'dart:developer';

import 'package:exe14/exe14.dart' as exe14;

void main(List<String> arguments) {
  log('Valores Unicos: ${exe14.intersecao({1, 2, 3, 4}, {3, 5, 6})}');
}
