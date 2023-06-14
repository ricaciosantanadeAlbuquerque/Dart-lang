import 'pessoa.dart';

void main() {
  Pessoa pessoa1 = Pessoa("Lucas", 26, altura: 1.82);
  print("\n Nome: ${pessoa1.nome}, Idade: ${pessoa1.idade}, Cor: ${pessoa1.cor}, Altura: ${pessoa1.altura} \n");

  Pessoa pessoa2 = Pessoa("João", 21, cor: "Preto", altura: 1.73); // parâmetros nomeados devem ser declarados para receber  um valor
  print("\n Nome: ${pessoa2.nome}, Idade: ${pessoa2.idade}, Cor: ${pessoa2.cor} Altura:${pessoa2.altura}\n");

  print("São iguais ? ${identical(pessoa1, pessoa2)? "Sim! são iguais":"Não ! são diferentes."}");
}
