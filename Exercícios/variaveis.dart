void main(){

  String nome = "Lucas";
  print(nome);
  int num1 = 10;
  print(num1);
  bool achou = true; // é verdadeiro
  print(achou);
  List<String> nomes = ["Lucas","Ana","Amanda","jose"];
  print(nomes.length); // tamanho da lista
  print(nomes[0]);
  print(nomes[1]);
  print(nomes[2]);
  var valor = 1.50;
  print(valor);
  dynamic j = "qualquer tipo de valor ";
  print(j);
  Map<int,String> mapa = new Map();
  double salario = 1500.000;
  mapa[1] = "salário";
  print("Seu salário é de ${salario}");
  Object a = 123;
  print(a);
print("O valor do Map "+mapa[1].toString());
  
}