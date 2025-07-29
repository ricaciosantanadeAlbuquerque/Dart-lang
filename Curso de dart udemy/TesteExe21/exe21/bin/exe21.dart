import 'dart:developer';

import 'package:exe21/exe21.dart' as exe21;

Future<void> main(List<String> arguments)async{
  log(await exe21.carregarMensagem());
  /**
   * log() só funciona no Dart em modo Debug
    */
}

