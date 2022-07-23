import 'dart:io';
void main(){
  print("Digite seu nome");
  String? nome = stdin.readLineSync();
  print("Digite sua Altura");
  String? altura = stdin.readLineSync();
  print("Digite seu peso ppor favor");
  String? peso = stdin.readLineSync();

  //var  nome1 = nome;
  //double n = double.parse(nome1!);
  String altura1 = altura!;
  double altura2 = double.parse(altura1);

  String peso1 =peso!;
  double peso2 = double.parse(peso1);

  double imc = peso2/(altura2*altura2);
  print(' Senhor ${nome}, seu imc é de  ${imc.truncateToDouble()}.');


}