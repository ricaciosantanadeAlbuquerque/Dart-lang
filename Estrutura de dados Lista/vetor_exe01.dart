import 'dart:io';

void main() {
  List<int> num1 = [1, 0, 5, -2, -5, 7];
  int soma = 0;
  for (int j = 0; j < 6; j++) {
   
    if (j == 0 || j == 1 || j == 5) {
      soma += num1[j];
    }
    if (j == 4) {
      num1[j] = 100;
    }
  }
  print(
      "=======================XXXXXXXXXXXXXXXX================================");
  for (int j = 0; j < num1.length; j++) {
    print(num1[j]);
  }
  print("O valor da soma da posição [0] [1] [5] é ${soma}");
}
