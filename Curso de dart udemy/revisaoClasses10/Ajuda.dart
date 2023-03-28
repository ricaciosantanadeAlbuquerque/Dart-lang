class Ajuda {
  int policia = 190;
  int samu = 192;
  int bombeiros = 193;
  int vigilancia_Ambiental = 8332143459;

  void socorro(int opcao) {
    switch (opcao) {
      case 1:
        print("Policia: $policia");
        break;
      case 2:
        print("Samu: $samu ");
        break;
      case 3:
        print("bombeiro: $bombeiros ");
        break;
      case 4:
        print("vigilancia Ambiental $vigilancia_Ambiental ");
        break;
      default:
        print("Valor fora da faixa ");
    }
  }
}
