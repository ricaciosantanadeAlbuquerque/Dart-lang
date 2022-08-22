 
 void main(){

    Controle novoControle  = new Controle("preto", "Sansung", 12, 15);
    novoControle.ligar();
    novoControle.mudarCanal();
    novoControle.desligar;

      print(novoControle);


 }
  class Controle{
    // Atribultos de Classe 
    final String COR;
    final String FABRICANTE;
    final int QTDBOTOES;
    final int TAMANHO;

    Controle(this.COR,this.FABRICANTE,this.QTDBOTOES,this.TAMANHO); // o contrutor passa os valores para os atribultos da classe controle
     // funções da Classe { o que ele pode fazer }
     ligar(){
     print("Ligando TV");
     }
     desligar(){
      print("Desligando tv ");
     }
     mudarCanal(){
      print("Mudando  canal");
     }
      String toString(){
        return "Cor ,"+COR+" Fabricante ,"+FABRICANTE+" Quantidade de boltões ,"+QTDBOTOES.toString()+" Tamanho ,"+TAMANHO.toString();
      }

  }