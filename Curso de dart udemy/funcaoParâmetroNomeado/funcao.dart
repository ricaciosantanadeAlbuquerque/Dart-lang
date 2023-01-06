void main() {
  var resultado = soma(valorA: 20, valorB: 30);
  print("$resultado");

  var r = somar2(x: 20, y: 40);
  print(r);

  print(dados(nome: "lucas", idade: 38, altura: 1.80));
  print(dados2(nome: "lucas", idade: 40, altura: 3.33));

  var valor = media(a: 33,b:22,c: 55);
  
  print(valor);
}

int soma({int valorA = 0, int valorB = 0}) => valorA + valorB;

double somar2({double x = 0, double y = 0}) => x * y;

String dados({String? nome, int? idade, double? altura}) => "$nome $idade $altura";

dados2({String nome = "", int idade = 0, double altura = 0.0}) => "$nome $idade,$altura";

int media({int a = 0, int b = 0, int c = 0}) {
  return a + b + c;
}
