import 'dart:developer';

import 'package:exe03/exe03.dart' as exe03;

void main(List<String> arguments) {
  assert(exe03.reverter(texto: 'ricacio').isNotEmpty);
  log('Nome ao contrário: ${exe03.reverter(texto: 'ricacio')}');
}
/** 
 * assert()  me permite testar as afirmativas, e lançar exeções em caso de falha
 */