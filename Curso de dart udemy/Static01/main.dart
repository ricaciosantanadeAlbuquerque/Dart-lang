import 'Carro.dart';

void main() {
  Carro p1 = new Carro(cor: "Azul", fabricante: "HSG", motor: 2.5);
  print(p1.toString());
  p1.setCor = "Vermelho";
  p1.setFabricante = "BR";

  print(p1.toString());
  Carro.potencia(3.0);
  print(p1.toString());

  // ================

  Carro p2 = Carro.potente(cor: "Verde", fabricante: "HMS", motor: 6.0); // construtor nomeado 
  Carro.motor = 7.0; // a classe Carro pode visualizar atribultos static diretamente.

  print(p2.toString());

  print("p1 é igual  p2 ${identical(p1, p2) ? 'Sim' : 'Não'}");
  // nova instancia

  var j = Carro(cor: "Branco", fabricante: "VV", motor: 2.0);
  var x = Carro(cor: "Rosa", fabricante: "Beta", motor: 1.2).setCor = 'Roxo';
  print(j.toString());
  print(x.toString()); // estamos utilizando diretamente o método set através da instância carro, por isso, só o atribulto cor possui valor, x é um objeto da classe carro, e foi inicializado, porém como utlizamos o método set diretamente, então consta que só o  atribulto cor possui valor. Diferente do objeto j.
}
