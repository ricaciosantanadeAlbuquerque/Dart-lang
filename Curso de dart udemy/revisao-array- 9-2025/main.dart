void main() {
  var texto = ['Ricacio', 'Santana'];
  List<dynamic> numeros = [1, 2, 3, 4, 5, 6, 7, 32, 28];
  List<bool?> condicoes = [!false, true, !true, null];
  print('Nome: ${texto[0]} ${texto[1]}');
  print('${texto[0]}, tem ${numeros[7]}, anos');
  print(
      '${texto[0]} ${numeros[7] >= 18 ? 'é maior' : 'não é maior'}, de idade');

  print(
      'condicoes[3] == null : ${condicoes[3] ?? (condicoes[0] != null && condicoes[0] == true ? condicoes[1] : condicoes[2])}');

  bool verdadeiro = !false;
  List<Object?> arrayDinamico = ['texto', [], 3, 1.5, 5, verdadeiro];
  print(arrayDinamico);
  print(arrayDinamico[0]);
  arrayDinamico[0] = texto[0];
  arrayDinamico[1] = ['Ricacio', 'Santana', 'de', 'Albuquerque'];
  arrayDinamico[2] = numeros[2];
  arrayDinamico[3] = numeros[1];
  arrayDinamico[4] = !verdadeiro;
  print(arrayDinamico);

  /**
   * O que fizemos foi uma sobreposição de valores
   */

  arrayDinamico.add(condicoes[3]);
  arrayDinamico.insert(0, 'Leila');
  print('');
  print(arrayDinamico);
  arrayDinamico.removeAt(1);
  print('');
  print(arrayDinamico);
  arrayDinamico.removeRange(1, 4);
  print(arrayDinamico);
  arrayDinamico.remove('Leila');
  print('');
  print(arrayDinamico);
  print(arrayDinamico.length);
  arrayDinamico.clear();
  print('$arrayDinamico == null: ${arrayDinamico == null}');
  print('$arrayDinamico == empty: ${arrayDinamico.isEmpty}');
  arrayDinamico.length = 1;
  print('$arrayDinamico ?? ${arrayDinamico.contains(null)}');

  numeros = [10, 5, 1, 2.25, 7.5];
  numeros.sort();
  print(numeros);
  texto = ['Lucas', 'Dora', 'Biza'];
  texto.sort((a, b) => a.compareTo(b));
  print(texto);
}
