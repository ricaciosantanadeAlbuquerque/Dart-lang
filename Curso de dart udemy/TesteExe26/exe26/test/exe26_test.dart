import 'package:exe26/exe26.dart';
import 'package:test/test.dart';

void main() {
  late Map<String, int> notas;

  setUp(() {
    notas = {'ricacio': 9, 'ana': 7, 'carmem': 5, 'dora': 4, 'lucas': 5};
  });

  test('ricacio foi aprovado', () {
    expect(aprovado(map: notas, chave: 'ricacio'), equals(true));
  });

  test('Ana foi aprovada', () {
    expect(aprovado(map: notas, chave: 'ana'), equals(true));
  });

  test('Carmem reprovada', () {
    expect(aprovado(map: notas, chave: 'carmem'), isFalse);
  });

  test('dora foi reprovada', () {
    expect(aprovado(map: notas, chave: 'dora'), isFalse);
  });

  test('Lucas foi reprovado', () {
    expect(aprovado(map: notas, chave: 'lucas'), isFalse);
  });
}
