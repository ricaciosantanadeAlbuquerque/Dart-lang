class Calculos06 {
  double pi = 3.14; // atribulto do instância
  static double piEstatico = 3.14; // atribulto de classe

  double areaCirculo(double raio) {  // método de instância
    return pi * (raio * raio);
  }

  static double areaCirculoEstatico(double raio) { // método de classe
    return piEstatico * (raio * raio);
  }
}
