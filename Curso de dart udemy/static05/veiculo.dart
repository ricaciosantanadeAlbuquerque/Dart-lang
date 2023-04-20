class Veiculo {
  // atribultos
  static double velocidade = 0.0;
  static final bool status = false;

  static void ligar() {
    print("CARRO LIGADO COM SUCESSO !!!");
  }

  static void desligar() {
    print("CARRO DESLIGADO COM SUCESSO !!!");
  }

  static void acelerar() {
    velocidade += 10;
  }

  static void mostrar() {
    print("Velocidade: $velocidade");
    print(" Ligado: ${(status == true) ? 'SIM' : 'NAO'}");
  }
}
