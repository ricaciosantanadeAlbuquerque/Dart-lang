void main(){
  Map<int,Map<int,String>> matriz = new Map();
  Map<int,String> nome = new Map();
  Map<int,String> nome1 = new Map();
  Map<int,String> nome2 = new Map();
  nome[1] = "lucas";
  nome[2] = "dora";
  nome[3] = "ana";
  nome1[1] = "biza";
  nome1[2] = "luiza";
  nome1[3] = "anabel";
  nome2[1] = "ana";
  nome2[2] = "joãoLucas";
  nome2[3] = "biel";
  matriz[1] = nome;
  matriz[2] = nome1;
  matriz[3] = nome2;
  
  for(int j = 1; j < 4; j++){
    print(matriz[j]);
  }
}