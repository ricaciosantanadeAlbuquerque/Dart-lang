import 'Garrafa.dart';

void main() {

  Garrafa.capacidade = 100;
  Garrafa.tipoMaterial = "Plastico";
  Garrafa.encher();
  Garrafa.esvaziar();
  Garrafa.mostrar();
  /**
   * Atribultos e métodos static Pertencem a classe e não a o objeto da classe 
   * são visualizados e acessados pela Classe e não por sua instância.
   */
}
