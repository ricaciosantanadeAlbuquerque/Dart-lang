import 'mamiferos.dart';

class Cao extends Mamifero {
  String? nome;
  String? raca;

  Cao({required this.nome, required this.raca, required String? sexo, required, required String? idade, bool docil = false}) : super(sexo: sexo, idade: idade, docil: docil) {
    this.nome = (nome == null) ? 'indefinido' : nome;
    this.raca = (raca == null) ? 'indefinido' : raca;
    this.sexo = (sexo == null) ? 'indefinido' : sexo;
    this.idade = (idade == null) ? 'indefinido' : idade;
  }
 // super neste caso refere-se ao construtor da super instância que no caso é Mamifero()
  void acao() {
    print("Late como um cao ");
  }

  @override
  String toString() => 'Nome:$nome, Raça:$raca, ' + super.toString(); // super refere-se ao toString() do pai Mamifero()
}
