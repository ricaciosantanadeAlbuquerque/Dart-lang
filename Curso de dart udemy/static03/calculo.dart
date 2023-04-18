
// Variáveis estáticas ficam disponíveis na própria classe,  em vez de suas instâncias ou objetos.
// Dentro de métodos estaticos deve se usar variáveis estáticas da classe.
// variáveis  estáticas podem ser acessadas sem precisar instanciar a classe ou criar objetos.
class Calculo2{

   final double pi = 3.14; // atribulto de instancia
  static double piEstatico = 3.14; // pertence a classe

  double areaCirculo(double raio) {  // de instância
    return this.pi * (raio * raio);
  }

  static double areaCirculoEstatic(double raio) { // pertence a classe
    return piEstatico * (raio * raio);
  }

  
}
