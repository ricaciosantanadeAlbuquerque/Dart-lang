import 'dart:io';
// calcule a média ========================
void main() {
  print("Digite a primeira nota");
  String? nota = stdin.readLineSync();
  print("Digite a segunda nota ");
  String? nota1 = stdin.readLineSync();
  print("Digite a terceira nota ");
  String? nota2 = stdin.readLineSync();
  print("Digite a quarta nota");
  String? nota3 = stdin.readLineSync();

  try {
    if ((nota != null && nota != " ") && (nota1 != null && nota1 != " ") && (nota2 != null && nota2 != " ") && (nota3 != null && nota3 != " ")) {
      double n1 = double.parse(nota);
      double n2 = double.parse(nota2);
      double n3 = double.parse(nota3);
      double n4 = double.parse(nota3);

      media1(a: n1, b: n2, c: n3, d: n4); // chamada a funcao media
    } else {
      print("ERRO! valores não permitidos !");
      exit(0);
    }
  } catch (NumberFormatException) {
    print("Informe valores numericos");
  }
}

void media1({double a = 0, double b = 0, double c = 0, double d = 0}) {
  var media = (a + b + c + d) / 4;
  print("Sua média é ${media}");
}
