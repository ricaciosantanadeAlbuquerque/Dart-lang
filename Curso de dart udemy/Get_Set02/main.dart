import 'Pessoa.dart';

void main() {
  Pessoa1 pessoa1 = new Pessoa1("Lucas", 27, 1.80, "masculino", "rua 12");
  var resultado = pessoa1.dados; // get
  print(resultado); 
  pessoa1.endereco = "Rua 25"; // set 
  Pessoa1 pessoa2 = new Pessoa1.boa("Ana", 33, 172, "Feminina", "rua 13", "boa");

  print(pessoa2.dados); // get
  pessoa2.nome = "luiza"; // set 
  print(pessoa2.dados); // get
}
