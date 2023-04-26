import 'caneta.dart';

void main() {
  CanetaSingleton.instancia.carga = 100;
  CanetaSingleton.instancia.cor = "Azul";
  CanetaSingleton.instancia.ponta = 1.5;

  print(CanetaSingleton.instancia.cor);

  CanetaSingleton caneta = CanetaSingleton.instancia;

  print(caneta.cor);

  // Erro CanetaSingleton caneta2 = CanetaSingleton();
  
}
