class Carro {
  String? marca;
  String? cor;

  Carro(this.marca, this.cor);

  void andar() {
    print('Andando');
  }

  Carro retorno() => this; // this  nada mais é do que a intância da propria classe Carro,
  // Toda as vezes que for criado um objeto o [this] apontará para este objeto.
  // cada instância terá o seu propio [this] apontando para si mesma { instância da classe}
  // Não podemos utilizar o objeto dentro da classe mas podemos utilizar o [this]
}

void main() {
  Carro carro = Carro('HHJ', 'Branco');

  print(carro.retorno().cor);
  print(carro.retorno().marca);

  // cada instância com seu this

  Carro carro1 = new Carro('xx', 'preto');
  print(carro1.retorno().marca);
  
  // cada instância com seu this

  var carro2 = Carro('GHC', 'Prata');
  print(carro2.retorno().cor);
  print(carro2.retorno().marca);
}
