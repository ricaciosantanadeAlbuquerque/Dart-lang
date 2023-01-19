import 'dart:io';
 // IMC
void main(List<String> args) {
  print("-------------PESO IDEAL------------");
  print("Digite seu peso por favor ! ");
  String? valor = stdin.readLineSync();
  print("Digite a altura por favor!");
  String? altura = stdin.readLineSync();

  double peso = double.parse(valor!);
  double altura1 = double.parse(altura!);
  double imc = peso / (altura1 * altura1);
  if (imc < 18.5) {
    print("Peso abaixo do normal");
  } else if (imc >= 18.5 && imc <= 24.4) {
    print("Peso Ideal ");
  } else if (imc >= 24.5 && imc <= 29.9) {
    print("Pré-Obesiddade");
  } else if (imc >= 30 && imc <= 34.9) {
    print("Obesidade classe 1");
  } else if (imc >= 35 && imc <= 39.9) {
    print("Obesidade nível 2");
  } else {
    print("Obesidade nível 3 Morbida");
  }
}
