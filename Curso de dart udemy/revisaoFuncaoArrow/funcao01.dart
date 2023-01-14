void main(List<String> args) {
  dadosPessoais(nome: "Ana", altura: 1.72, idade: 37, p: menssagem);
  dadosBancarios("Dora", 56, "rua manoel arruda cavalcante", () => print("Dados Cadastrados com sucesso !\n"));
}

void dadosPessoais({String nome = "", int idade = 0, double altura = 0, Function? p}) {
  print("\nNome: $nome ,Idade: $idade ,Altura: $altura \n");
  if (p != null) {
    print(p()); // estou execuntando a função passada como argumento para o parâmetro p
    // e mostrando o seu retorno por meio da função print
  }
}

String menssagem() => "Seja bem Vindo!";

void dadosBancarios([String nome = "", int idade = 0, String endereco = "", Function? j]) {
  print("\nNome: $nome, Idade: $idade, Endereco: $endereco\n");

  j!(); // not null !
}
