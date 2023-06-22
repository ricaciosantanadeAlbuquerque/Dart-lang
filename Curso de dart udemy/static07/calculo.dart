/**
 * Variáveis Estaticas ficam disponivéis  na própia classe  em vez de suas instâncias/objetos.
 * Em métodos Estaticos deve ser usar variáveis  estáticas da classe.
 * Variáveis estaticas e métodos estaticos, podem ser acessadas  sem precisar instânciar a classes/o
 */
class CalculoArea {
  double pi = 3.14;
  static double piEstatico = 3.14;

  double areaCirculo(double raio) {
    return pi * (raio * raio);
  }

  static double areaCirculoEstatico(double raio) {
    return piEstatico * (raio * raio);
  }
}
