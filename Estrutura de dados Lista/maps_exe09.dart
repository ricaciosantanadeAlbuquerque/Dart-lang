import 'dart:io';
void main(){
Map<int,Map<int,int>> matriz = new Map(); //  mapa cuja a chave é um inteiro e o valor é um mapa de inteiro
Map<int,int> numero1 = new Map(); // mapa cuja a chave é um inteiro e o valor e inteiro ;
Map<int,int> numero2 = new Map();
Map<int,int> numero3 = new Map();
for(int i =0; i < 3 ; i++){
  for(int j = 0 ; j < 3;j++){
    numero1[i] = j;
    numero2[i] = j*1;
    numero3[i] = j*2;
  }
}
matriz[1] = numero1;
matriz[2] = numero2;
matriz[3] = numero3;
print(matriz);

}