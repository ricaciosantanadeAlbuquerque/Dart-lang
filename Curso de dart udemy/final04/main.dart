import 'caneta.dart';

void main() {
  Caneta caneta = Caneta(cor: 'Vermelho', ponta: 1.5, carga: 90, tampada: true);
  // método de instância ========================= só é visível pelo objeto da classe
  caneta.mostrar();
  // caneta.carga = 100; Imutavel;
  // ===============================================
  // atribulto e metodo de classe  Acessado pela classe de forma direta
  print(Caneta.modelo);
  print(Caneta.mostrarModelo());
}
