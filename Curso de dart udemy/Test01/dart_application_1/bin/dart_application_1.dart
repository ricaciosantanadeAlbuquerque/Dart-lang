import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

void main(List<String> arguments) {
  print('Hello world: ${dart_application_1.calculate()}!');

  String? nome;

  assert(nome != null, 'ERRO Valor nulo');

  String telefone = '12345678910';
  assert(telefone.length == 9, 'Quantidade de numeros é diferente 9');

  assert(46 < 45,);

  print('O resto da divisão: ${dart_application_1.restoDivisao(num1: 12, num2: 3)}');
}
