/**
 * Utilizando o conceito de parâmetros nomeados crie uma função  que seja capaz de retornar a média aritmética de 2 valores ou de 3  valores ou de 4 valores;
 */
import 'Dart:io';

void main() {
  inicio();
}

void inicio() {
  String? respota = 'sim';
  List<Map<String, dynamic>> notas = [];

  do {
    print('============Calculo da Media Aritmética============');
    print('Digite o Nome do aluno ');
    String? nomeEntrada = stdin.readLineSync();
    print('Digite a primeira nota !');
    String? entradaNota1 = stdin.readLineSync();
    print('Digite a segunda nota ');
    String? entradaNota2 = stdin.readLineSync();
    print('Digite o terceira nota');
    String? entradaNota3 = stdin.readLineSync();
    print('Digite a quarta nota');
    String? entradaNota4 = stdin.readLineSync();

    notas.add({'nome': nomeEntrada!, 'media': media(nota1: entradaNota1, nota2: entradaNota2, nota3: entradaNota3, nota4: entradaNota4).truncate()});

    print('Deseja continuar ? [sim] ou [nao]');
    respota = stdin.readLineSync();
  } while (respota == 'sim');

  print('==============Mostrando as notas dos Alunos==============');

  print(notas);
}

double media({String? nota1, String? nota2, String? nota3, String? nota4}) {
  var media = 0.0;

  if (nota1!.isNotEmpty && nota2!.isNotEmpty && nota3!.isNotEmpty && nota4!.isNotEmpty) {
    print('===todos===');
    double num1 = double.tryParse(nota1) ?? 0;
    double num2 = double.tryParse(nota2) ?? 0;
    double num3 = double.tryParse(nota3) ?? 0;
    double num4 = double.tryParse(nota4) ?? 0;

    media = (num1 + num2 + num3 + num4) / 4;

    // media = (nota1 + nota2 + nota3 + nota4) / 4;
  } else if (nota1.isNotEmpty && nota2!.isNotEmpty && nota3!.isNotEmpty) {
    print('===4===');

    double num1 = double.tryParse(nota1) ?? 0;
    double num2 = double.tryParse(nota2) ?? 0;
    double num3 = double.tryParse(nota3) ?? 0;

    media = (num1 + num2 + num3) / 3;

    // media = (nota1 + nota2 + nota3) / 3;
  } else if (nota1.isNotEmpty && nota2!.isNotEmpty && nota4!.isNotEmpty) {
    print('===3==');

    double num1 = double.tryParse(nota1) ?? 0;
    double num2 = double.tryParse(nota2) ?? 0;
    double num4 = double.tryParse(nota4) ?? 0;

    media = (num1 + num2 + num4) / 3;

    // media = (nota1 + nota2 + nota4) / 3;
  } else if (nota2!.isNotEmpty && nota3!.isNotEmpty && nota4!.isNotEmpty) {
    print('===1===');

    double num2 = double.tryParse(nota2) ?? 0;
    double num3 = double.tryParse(nota3) ?? 0;
    double num4 = double.tryParse(nota4) ?? 0;

    media = (num2 + num3 + num4) / 3;

    // media = (nota2 + nota3 + nota4) / 3;
  } else if (nota1.isNotEmpty && nota3!.isNotEmpty && nota4!.isNotEmpty) {
    print('===2===');

    double num1 = double.tryParse(nota1) ?? 0;
    double num3 = double.tryParse(nota3) ?? 0;
    double num4 = double.tryParse(nota4) ?? 0;

    media = (num1 + num3 + num4) / 3;

    //
  } else if (nota1.isNotEmpty && nota2.isNotEmpty) {
    double num1 = double.tryParse(nota1) ?? 0.0;
    double num2 = double.tryParse(nota2) ?? 0.0;

    media = (num1 + num2) / 2;
  } else if (nota1.isNotEmpty && nota3!.isNotEmpty) {
    double num1 = double.tryParse(nota1) ?? 0.0;
    double num3 = double.tryParse(nota3) ?? 0.0;

    media = (num1 + num3) / 2;
  } else if (nota1.isNotEmpty && nota4!.isNotEmpty) {
    double num1 = double.tryParse(nota1) ?? 0.0;
    double num4 = double.tryParse(nota4) ?? 0.0;

    media = (num1 + num4) / 2;
  } else if (nota2.isNotEmpty && nota3!.isNotEmpty) {
    double num2 = double.tryParse(nota2) ?? 0.0;
    double num3 = double.tryParse(nota3) ?? 0.0;

    media = (num2 + num3) / 2;
  } else if (nota2.isNotEmpty && nota4!.isNotEmpty) {
    double num2 = double.tryParse(nota2) ?? 0.0;
    double num4 = double.tryParse(nota4) ?? 0.0;

    media = (num2 + num4) / 2;
  } else if (nota3!.isNotEmpty && nota4!.isNotEmpty) {
    double num3 = double.tryParse(nota3) ?? 0.0;
    double num4 = double.tryParse(nota4) ?? 0.0;

    media = (num3 + num4) / 2;
  }

  return media;
}
