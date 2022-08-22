import 'dart:io';
void main(){
 Map<int,String> diaSemana = new Map();
 diaSemana[1] = "Domingo";
 diaSemana[2] = "Segunda";
 diaSemana[3] = "terça";
 diaSemana[4] = "quarta";
 diaSemana[5] = "quinta";
 diaSemana[6] = "Sexta";
 diaSemana[7] = "Sábado";
print("Digite valores entre 1 e 7");
String? entrada = stdin.readLineSync();
int valor = int.parse(entrada!);
 switch(valor){
  case 1:
  print(diaSemana[1]);
  break;
  case 2:
  print(diaSemana[2]);
  break;
  case 3:
  print(diaSemana[3]);
  break;
  case 4:
  print(diaSemana[4]);
  break;
  case 5:
  print(diaSemana[5]);
  break;
  case 6:
  print(diaSemana[6]);
  break;
  case 7:
  print(diaSemana[7]);
  break;
  default:
  print("Valor fora da faixa!");
  break;
 }
}