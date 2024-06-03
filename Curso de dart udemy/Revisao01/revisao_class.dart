
import 'dart:math';

class PessoaFactory{

  static final PessoaFactory instancia = PessoaFactory._construtorNomeado();
  String? nome;
   int? identidade;


  factory PessoaFactory (){
    return instancia;
  }

  PessoaFactory._construtorNomeado();

}

class PessoaStatic{
static final PessoaStatic instancia = PessoaStatic._construtorNomeado();
 String? nome;

 PessoaStatic._construtorNomeado();
 @override
 String toString() => 'nome:$nome';
}

class PessoaGet{
  static final PessoaGet _instancia = PessoaGet._construtorNomeado();
  String? _nome;

  PessoaGet._construtorNomeado();

  String? get nome => this._nome;

  void set nome(String? nome) => this._nome = nome;

   static PessoaGet get instancia => _instancia;

}


class PessoaInstancia{

  static PessoaInstancia? instancia;
  String? nome;
  final int identidade;

  factory PessoaInstancia({required String nome,int? identidade}){
     identidade = (identidade != null) ? identidade : Random().nextInt(99999999);
    return instancia  ??= PessoaInstancia._construtorNomeado(nome, identidade);
  } 

  PessoaInstancia._construtorNomeado(this.nome,this.identidade);

}


// ===========================abstract classe===========================


abstract class Animal{

  String? idade;
  bool? docil;
  bool? coluna;

  Animal.vertebrado(this.idade,{this.docil}){
    this.coluna = true;
  }

  Animal.invertebrado(this.idade,{this.docil}){
    this.coluna = false;
  }

  void dormir(){
    print('Dorme como um animal ');
  }

  @override
  String toString(){
    return 'Idade:$idade, docil:$docil, coluna:$coluna ';
  }

}

abstract class Mamifero extends Animal{
  String? sexo;
  String? desenvolvimento;

  Mamifero.placentario(this.sexo,{required String idade,required bool docil}) : super.vertebrado(idade,docil:docil){
    this.desenvolvimento = 'Placentário';
  }

  Mamifero.marsupial(this.sexo,{required String idade,required bool docil}) : super.vertebrado(idade,docil:docil){
    this.desenvolvimento = 'Placentário + bolsa';
  }

  Mamifero.monotremado(this.sexo,{required String idade,required bool docil}) : super.vertebrado(idade,docil:docil){
    this.desenvolvimento = 'Ovo';
  }

  void alimentar(){
    print('Se alimenta como ');
    print('Um.');
  }

  void reproduzir();

  @override
  String toString() => 'Sexo:$sexo, Desenvolvimento:$desenvolvimento ${super.toString()}';
}

class Cao extends Mamifero{
  String? nome;
  String? raca;

  Cao.domestico(this.nome,this.raca,String sexo,{String idade = 'indefinido', bool docil = true}) : super.placentario(sexo, idade: idade, docil: docil);
  Cao.selvagem(this.nome,this.raca,String sexo,{String idade = 'indefinido',bool docil = false}) : super.placentario(sexo, idade: idade, docil: docil);

  void acao(){
    print('Late como um cão');
  }

  @override
  void alimentar(){
    super.alimentar();
    print('Cão');
  }

  @override
  void dormir(){
    print('Dorme como um Cão !!!');
  }

  @override
  void reproduzir() => print('Se reproduz como um Cão');

  @override
  String toString() => 'Nome:$nome, Raça:$raca ${super.toString()}';
}


void main(){
  var cao = Cao.domestico('Lucas', 'pug','Masculino');
  print(cao);

  cao..dormir()..alimentar()..reproduzir()..acao(); // operador em cascata ..

  var p1 = PessoaFactory();
  var p2 = PessoaFactory();
  p1.nome = 'Lucas';
  p1.identidade = 75;

  print('Nome:${p2.nome}, Identidade:${p2.identidade}');
  print(identical(p1,p2) ? 'São a mesma instância' : 'Não são a mesma instância');
  print(identical(PessoaFactory.instancia,p1));

  var p3 = PessoaInstancia(nome: 'Ana');
  var p4 = PessoaInstancia.instancia;
  print(p3.identidade);
  print(p3.nome);
  print(identical(p4, p3));

  var p5 = PessoaGet.instancia;
  p5.nome = 'ricacio';

  print(PessoaGet.instancia.nome);

  var p6 = PessoaGet.instancia;

  print('Nome:${p6.nome}');

  print(identical(p5,p6));

 PessoaStatic pessoa = PessoaStatic.instancia;
 pessoa.nome = 'Matheus';

 var p8 = PessoaStatic.instancia;

 print(p8.nome);

 print(identical(pessoa,p8));

}