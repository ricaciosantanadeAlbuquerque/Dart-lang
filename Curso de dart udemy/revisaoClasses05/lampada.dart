/**
 *Faça uma Classe que simule o funcionamento de uma lampada. A classe Lampada deve conter uma tribulto boleano chamado "status" e os métodos ligar e desligar ambos sem retorno. O método ligar Coloca true em "status", já o método desligar coloca false em "status".Crie também o método "observa" que retorna o estado da lâmpada("ligado" ou "desligado").
 */
class Lampada {
  bool? Status;

  void ligar() {
    if (this.Status != true) {
      // se for diferente de ligado então liga
      this.Status = true;
    }
  }

  void desligar() {
    if (this.Status != false) {
      // se for diferente de desligado  então desliga.
      this.Status = false;
    }
  }

  String observado() {
    var retorno;
    if (this.Status == true) {
      retorno = 'Ligado';
    } else if (this.Status == false) {
      retorno = 'Desligado';
    }
    return retorno;
  }
}
