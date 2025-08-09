import 'package:exe08/exe08.dart';
import 'package:test/test.dart';

late Map<String, int> usuarios;

void main() {
  setUp(() {
    usuarios = {'ana': 10, 'joao': 9};
  });

  test('Usuário existe', () {
    expect(usuarios.containsKey('ana'), isTrue);
  });

  test('Nota correta', () {
    expect(usuarios['joao'], equals(9));
  });
}
