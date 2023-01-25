void main() {
  Pessoa p = new Pessoa(); // p é uma nova pessoa
  p.nome = "Ana";
  p.idade = 34;
  p.informacao();
  print(p.nome);
  print(p.idade);
}

class Pessoa {
  // atribultos
  String? nome;
  int? idade;
  // métodos
  void informacao() {
    print("Nome: ${this.nome} Idade: ${this.idade}\n");
  }
}
