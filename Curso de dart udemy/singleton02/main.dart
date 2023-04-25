import 'carro.dart';

void main() {
  Carro.instancia; // a classe enchegar apenas atribultos e métodos static

  Carro v = Carro.instancia;
  v.cor = "Verde";
  v.ligado = true;
  v.marca = "MCD";
  v.velocidade = 100.00;
  print("Cor do carro v1: ${v.cor}");
  // ERRO! Carro v2 = Carro(); não podemos  criar um novo objeto

  Carro v2 = Carro.instancia;
  v2.velocidade = 10;
  print("Cor do carro V2: ${v2.cor}");
  print(v.velocidade);

  // possuem a mesma cor porque possuem a mesma instância.
}
