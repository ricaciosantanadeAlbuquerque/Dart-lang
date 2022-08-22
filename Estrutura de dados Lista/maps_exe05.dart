import 'dart:io';
void main(){
Map<int,String> nomes = {}; // {} ou Map(); ou new Map(); ou ainda Map<int,string>();

for(int j = 0; j < 10 ; j++){
  print("Digite um valor para chave ");
String? entrada = stdin.readLineSync();
int num1 = int.parse(entrada!);
print("Digite um valor para guardar");
  String? valor = stdin.readLineSync();
  nomes[num1] = valor!; // vamos supor que na chave 0 tera um valoe x etc 
}
nomes.forEach((key, value) {
  print(" chave => $key, valores => $value");
 });
 //Map<int,int> num2 = new Map();
}