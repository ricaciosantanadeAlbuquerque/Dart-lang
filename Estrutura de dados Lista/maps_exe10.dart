import 'dart:io';
void main(){
  Map<int,Map<int,Map<int,int>>> cubo = new Map();
  Map<int,Map<int,int>> matriz = new Map();
  Map<int,Map<int,int>> matriz1 = new Map();
  Map<int,Map<int,int>> matriz2 = new Map();
  Map<int,int> vetor = new Map();
  Map<int,int> vetor1 = new Map();
  Map<int,int> vetor2 = new Map();
    Map<int,int> vetor3 = new Map();
  Map<int,int> vetor4 = new Map();
  Map<int,int> vetor5 = new Map();
   Map<int,int> vetor6 = new Map();
    Map<int,int> vetor7 = new Map();
    Map<int,int> vetor8 = new Map();

  vetor[1] = 1;
  vetor[2] = 2;
  vetor[3] = 3;
  //~===============
  vetor1[1] = 6;
  vetor1[2] = 7;
  vetor1[3] = 8;
  //================
  vetor2[1] = 9;
  vetor2[2] = 10;
  vetor2[2] = 11;
  //=================

  //=========================
   vetor3[1] = 1;
  vetor3[2] = 2*1;
  vetor3[3] = 3*2;
  //=========================
  vetor4[1] = 6*3;
  vetor4[2] = 7*4;
  vetor4[3] = 8*5;
  //=========================
  vetor5[1] = 9*6;
  vetor5[2] = 10*7;
  vetor5[3] = 11*8;
  //========================= 
  matriz1[1] = vetor3;
  matriz1[2] = vetor4;
  matriz1[3] = vetor5;
  //=========================
  vetor6[1] = 12*9;
  vetor6[2] = 13*10;
  vetor6[3] = 14*11;
  //=======================
  vetor7[1] = 13*12;
  vetor7[2] = 14*13;
  vetor7[3] = 15*14;
  //=======================
   vetor8[1] = 16*15;
  vetor8[2] = 17*16;
  vetor8[3] = 18*17;
  //====================
  matriz[1] = vetor;
  matriz[2] = vetor1;
  matriz[3] = vetor2;
  matriz1[1] = vetor3;
  matriz1[2] = vetor4;
  matriz1[3] = vetor5;
  matriz2[1] = vetor6;
  matriz2[2] = vetor7;
  matriz2[3] = vetor8;
  cubo[1] = matriz;
  cubo[2] = matriz1;
  cubo[3] = matriz2;
 
  
  print("Digite o valor que vc procura !");
  String? entrada = stdin.readLineSync();
  bool achou = false;
  int caixa = 0;
  int chave =0;
  int valor = int.parse(entrada!);
  for(int i =1; i <3;i++){
    for(int j =1; j < 3;j++){
      for(int x =1; x < 3; x++ ){
          print(cubo.toString());
      }
    }
  }

  print("==========================================");
  cubo.forEach((key, value) { 
    value.forEach((key, value) { //  map matriz
      value.forEach((key, value) { // map int
        if(valor == value){
          achou = true;
          caixa = value;
          chave = key;
        }
      });
    });
  });
  if(achou){
    print("Chave =>$chave  Valor achado => ${caixa}");
  }else{
    print("O valor não existe dentro do map");
  }
 
}