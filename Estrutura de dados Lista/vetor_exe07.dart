import 'dart:io';
  
void main() {
  // passo 1

  List<int> matriz = [];
  int cont = 0;

  for (int i = 0; i <= 40; i++) {
    matriz.add(i);
    cont++;
  }
  bool achou = false;
   int valor = 0;
    print("Digite O valor que vc busca !");
    String? num = stdin.readLineSync();
    int num1 = int.parse(num!);
   for(int p in matriz){
    
    if ( p == num1) {
      achou = true;
      valor = num1;
      break;
    }
   }
  if (achou) {
    print("O valor  foi encontrado ${valor}");
  } else {
    print("O valor não existe nesse array ");
  }
}
