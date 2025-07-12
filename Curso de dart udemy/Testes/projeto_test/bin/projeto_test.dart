/**
 * Assert() 
 *  Usa a lógica boleana para testar afirmações no modo debug!
 *  Try/Catch pode ser usado para tratar as exceções
 */


import 'package:projeto_test/projeto_test.dart' as projeto_test;

void main(List<String> arguments) {
  print('Hello world: ${projeto_test.calculate()}!');

String telefone = '123456789';
    assert(telefone == 9, 'ERRO!  Telefone não possui 9 digitos');
}
