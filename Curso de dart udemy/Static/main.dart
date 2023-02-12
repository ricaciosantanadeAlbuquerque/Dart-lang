import 'calculo.dart';

void main() {
  var calculo1 = new Calculo(); // criamos um objeto da classe calculo

  print("PI: ${calculo1.pi}");
  print(calculo1.calculoArea(5));

  // o objeto calculo1 não pode visualizar atribultos e métodos static pois eles pertencem a classe!! e não a uma instancia.

  Calculo p1 = Calculo();

  var resultado = p1.calculoArea(5.0);
  print(p1.pi);
  print(resultado);
  // =============================================Static================================================================

  print(Calculo.piEstatico);
  print(Calculo.calcularAreaCirculoStatic(5));

  //==============================================Static-----------------------------------------------------------------
  print("Static == ${Calculo.calcularAreaCirculoStatic(5)}, instância == ${Calculo().calculoArea(5)}");

  /**
   * Quando usamos o nome da classe mais o ponto, acessamos atribultos e métodos static
   * Quando usamos o nome da classe com a lista de parâmetros, exe "Calculo()"  criamos um objeto desta classe, 
   * que pode visualizar todos os seus atribultos e métodos.
   */

  //==============================================Identical()-------------------------------------------------------------
  // a função Identical() compara objetos.
  print("\nInstancias consomem  ${identical(calculo1, p1) ? 'Menos' : 'Mais'} memória!\n");
  
}
