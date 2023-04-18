import 'calculo.dart';

void main() {
  Calculo2 calculo = Calculo2();
  double raio = 5;

  print("${calculo.pi}\n"); // Atravez do objeto calculo posso acessar os atribultos e métodos de instância da classe

  print(calculo.areaCirculo(raio));
   print("");
  // atribultos e métodos de classe, pertencem a classe, são visíveis a classe e não a o objeto da classe.
  print(Calculo2.piEstatico);
  print("");
  print(Calculo2.areaCirculoEstatic(raio));
}
