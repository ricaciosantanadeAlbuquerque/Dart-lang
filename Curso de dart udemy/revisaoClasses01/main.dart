import 'Caneta.dart';

void main() {
  /**
   * Sendo 'c1' uma instancia da classe Caneta(), ele tem acesso a todos os atribultos e métodos da classe Caneta()
   */
  Caneta c1 = new Caneta(); // criamos um objeto caneta 'c1';
  c1.carga = 100; //  passamos para o atribulto 'carga' do objeto 'c1' o valor 100
  c1.modelo = 'Bic Cristal';
  c1.cor = "Verde";
  c1.ponta = 2.0;
  c1.tampar(); // esta tampada
  c1.status();
  c1.rabiscar();
  print("===============================================================================================");
  Caneta c2 = Caneta();
  c2.cor = ' Azul'; // Atráves da instância da classe caneta (c2) podemos acessar todos os atribultos da Classe.
  c2.carga = 90;
  c2.modelo = 'tic';
  c2.ponta = 1.5;
  c2.destampar();
  c2.status();
  c2.rabiscar();
  print("===============================================================================================");
}
