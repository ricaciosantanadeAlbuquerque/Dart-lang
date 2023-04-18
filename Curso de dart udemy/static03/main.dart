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

  Calculo2 calculo1 = Calculo2();
  print(calculo1.pi);
  print(calculo1.areaCirculo(raio));
  // comparando objetos ===========================
  print("Instancias consomem: ${identical(calculo,calculo1)? 'menos memória pois são iguais' : 'Mais memória pois são diferentes'}");
  print('');
  print("\n Retornos iguais?: ${(Calculo2.areaCirculoEstatic(raio) == Calculo2().areaCirculo(raio) ? 'Sim' : 'não')}, porém os métodos são difirentes \n");

//Calculo2.areaCirculoEstatic(raio) método estatico sendo acessado atráves  da classe.
// Calculo2().areaCirculo(raio)  instância da classe acesando método de instância.
}
