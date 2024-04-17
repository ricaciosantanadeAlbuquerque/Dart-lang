class Caracteristica{
  String? tipo;
  int? passageiro;
  int? potencia;
  String? combustivel;

  Caracteristica(this.tipo,this.passageiro,this.potencia,this.combustivel);
  
  @override
  String toString(){
    return 'Tipo:$tipo, passageiro:$passageiro, pontencia:$potencia combustível:$combustivel';
  }
}