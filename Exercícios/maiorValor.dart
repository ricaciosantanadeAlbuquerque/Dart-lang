import 'dart:io';

void main() {
  print("Digite um Valor para variável [A] ");
  String? A = stdin.readLineSync();
  print("Digite um valor para [B] ");
  String? B = stdin.readLineSync();
  print("Digite um valor para [C] ");
  String? C = stdin.readLineSync();
  //CONVERSÃO
  int a = int.parse(A!);
  int b = int.parse(B!);
  int c = int.parse(C!);

  if (a + b > c) {
    print("A soma de A mais B ${a + b}  é maior que C ${c}");
  } else {
    print("A soma de A mais B não é maior do que C ");
  }
  
}
