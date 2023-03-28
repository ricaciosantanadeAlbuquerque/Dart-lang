/** Crie uma classe chamada 'caminhão' contendo os atribultos 'combustível' e 'velocidade'
 * os combustíveis válidos são  gasolina, diesel, e gás. Ao ser criado, todo caminhão deve possuir velocidade zero e combustível gasolina. deve ser possível subistituir o combustivel, aumentar e reduzir a velocidade ( de 0 a 150).
  */

class Caminhao {
  String combustivel = "gasolina";
  int velocidade = 0;

  void trocarCombustivel(String troca) {
    this.combustivel = troca;
  }

  void aumentarVelocidade() {
    this.velocidade++;
  }

  void painel() {
    print("Combustível: $combustivel ");
    print("Velocidade $velocidade ");
  }
}
