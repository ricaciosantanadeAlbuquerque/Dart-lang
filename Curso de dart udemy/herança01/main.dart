class Animal {
  String? idade;
  bool? docil;

  Animal(this.idade, this.docil);

  void dorme() {
    print('Drome como um animal !');
  }
}

class Mamifero extends Animal {
  String? sexo;

  Mamifero(this.sexo, idade, docil) : super(idade, docil);

  void Alimentar() {
    print('Se alimentar como um mamifero! ');
  }
}

class Cao extends Mamifero {
  // Cao() herda tudo de Mamifero() que herda tudo de Animal(). Cao() tem tudo que Mamifero e Animal tem
  String? nome;
  String? raca;

  Cao(this.nome, this.raca, String sexo, {String? idade, bool? docil}) : super(sexo, idade, docil); // super() refere-se ao construtor da super classe Mamifero! .

  void acao() {
    print("Late como um cão !.");
  }
}

void main() {
  var novaCao = new Cao("Bola", 'pastor Alemão', 'macho');

  print("Nome: ${novaCao.nome}, Raça: ${novaCao.raca}, Sexo:${novaCao.sexo}, Idade:${novaCao.idade}, Docil: ${novaCao.docil}");
}
