import 'artropode.dart';

class Aranha extends Artropode {
  String nome;
  String tipo;

  Aranha.domestica(this.nome, this.tipo, {String sexo = 'Indefinido', String idade = '0', bool docil = true}) : super.arachnida(sexo, idade, docil: docil);

  Aranha.selvagem(this.nome, this.tipo, {String sexo = 'Indefinido', String idade = '0', bool docil = false}) : super.arachnida(sexo, idade, docil: docil);

  void acao() {
    print('Morde como uma Aranha');
  }

// polimorfismo de sobreposição Obrigatória. / é obrigatória porque na super classe este método não tem escopo, é abstrato
  @override
  void reproduz() {
    print('Reproduz como uma aranha !!!');
  }

// polimorfismo de sobreposição. // neste caso a sobreposição só ocorre se for necessário não sendo Obrigatoria a sobreposição

  @override
  void dormir() {
    print('Dorme como uma aranha ');
  }

  @override
  void alimentar() {
    super.alimentar();
    print('Aranha');
  }

  @override
  String toString() => 'Nome:$nome, Tipo:$tipo, Sexo:$sexo, Idade:$idade, Docil:${docil! ? 'Sim':'Nao'}';
}
