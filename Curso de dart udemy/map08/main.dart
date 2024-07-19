void main(List<String> args){
 Carro c1 = new Carro('Honda','Civic');
 Carro c2 = new Carro('Toyota','Corola');
 Carro c3 = new Carro('Fiat','Palio');

 Map<String,Carro> carros = {'0':c1,'1':c2};
 carros['2'] = c3;
// Se as chaves do Map<> forem  String ou tipo numerico, e estiverem em ordem, então podemos usar o for()
 for(var i  =0; i < carros.length;i++){
   print('for: $i modelo ${carros['${i}']!.modelo}');
 }

  print('');

 for(var chave in carros.keys){
   final valor = carros[chave];
   print('Marca:${valor!.marca}, modelo: ${valor.modelo}');
 }

 print('');
 
 
 carros.forEach((chave,valor) => print('Marca:${valor.marca}, modelo:${valor.modelo}'));
}

class Carro{
  String marca,modelo;

  Carro(this.marca,this.modelo);

}