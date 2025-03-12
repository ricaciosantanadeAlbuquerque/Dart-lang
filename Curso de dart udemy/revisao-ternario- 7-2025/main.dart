import 'dart:math';

void main() {
  print('Votação Eleição 2026');

  int idade = 18;

  /// Ternário aninhado
  print((idade >= 18 && idade < 70)
      ? 'Voto Obrigatório'
      : (idade >= 16 && idade <= 17 || idade >= 70)
          ? 'Voto Opcional'
          : 'Não pode  votar');

  int nota = 70;

  // ignore: unused_local_variable
  String resultado = (nota < 40)
      ? 'Reprovado'
      : (nota < 70)
          ? 'Recuperação'
          : 'Aprovado';

  idade = Random().nextInt(50) + 1; // sobreposição de valor

  print((idade < 14)
      ? 'Criança'
      : (idade < 18)
          ? 'Adolescente'
          : 'Adulto');

  /**
    * Significa que da linha 23 para frente idade terá um valor aleátorio.
    */

  int numero = 12;

  print(
      'Numero: $numero é ${(numero % 2 == 0) ? 'Par' : 'Impar'} e ${numero.isNegative}');

  int multiplo = 5;

  print(
      'Numero: ${(numero % multiplo == 0) ? 'é' : 'Não é'}, multiplo de $multiplo');

  int ano = 1992;

  print(
      'Ano: $ano ${(ano % 4 == 0 || ano % 400 == 0 && ano % 100 != 0) ? 'é bissexto' : 'Não é bissexto'}');

  var nome;

  // ignore: unnecessary_null_comparison
  print('Nome: ${(nome == null) ? 'Ricacio' : nome}');

  // ignore: dead_code
  if (!true) {
    print('Verdadeiro');
  } else {
    print('Falso');
  }

  // ignore: dead_code
  print(true ? 'Verdadeio' : 'False');
}
