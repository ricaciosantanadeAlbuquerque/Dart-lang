/*
* Crie uma classe chamada TV contendo os seguintes atribultos: "ligado", "canal", "volume".
* defina os métodos ligar e desligar tv;
* Aumentar e reduzir o volume de um em um (de 0 a 100);
* trocar de canal de 0 a 100;
* "mostra" para apresentar todos os valores atuais dos atribultos;
*/

class Tv {
  bool ligado = false;
  int canal = 0;
  int volume = 0;

  void ligar() {
    if (this.ligado == false) {
      // é  porque está desligado

      this.ligado = true;
    }
  }

  void desligar() {
    if (this.ligado == true) {
      // se ligada  então podemos desligar
      this.ligado = false;
    }
  }

  void aumentarVolume() {
     if(this.ligado == true){

       if (this.volume < 100) {
        this.volume++;
      }
      
     }
  }

  void reduzirVolume() {
   if(this.ligado == true){

     if (this.volume > 0) {
        this.volume--;
      }

   }
  }

  void trocarCanal(int canal) {
   if(this.ligado == true){
     if (canal >= 0 && canal <= 100) {
        this.canal = canal;
      } else {
        print("O valor está fora da faixa ");
      }
   }
  }

  void mostrar() => print("Ligado: ${(this.ligado == true) ? 'SIM' : 'NAO'}, Volume: ${this.volume}, Canal: ${this.canal}");
}
