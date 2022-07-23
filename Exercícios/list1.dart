class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade) {}
}

void main() {
  List<Pessoa> listaPessoa = []; // inicializada sem valores;

  listaPessoa.add(Pessoa("Lucas", 33));
  listaPessoa.add(Pessoa("Ana", 12));
  /*A LISTA de nome "listaPessoa" ATRAVÉS DO MÉTODO ADD() ADICIONOU UM OBJETO PESSOA,
   passando o contrutor Pessoa() com os respectivos valores como argumento para o método add()*/

  for (Pessoa p in listaPessoa) {
    // para cada elemento da minha listaPessoa jogue para dentro de p
    // foreach
    print(p.nome);
  }
  listaPessoa.forEach((element) {
    print(element.nome);
  });
}
