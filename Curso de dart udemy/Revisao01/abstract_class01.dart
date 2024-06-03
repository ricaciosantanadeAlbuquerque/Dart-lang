/// classe abstrata
abstract class Animal{
  // atributos de classe
  String? idade;
  bool? docil;
  bool? coluna;

// construtor Nomeado resumido
  Animal.vertebrado(this.idade,{this.docil}){
    this.coluna = true; // tem coluna
  }

  Animal.invertebrado(this.idade,{this.docil}){
    this.coluna = false; // não tem coluna
  }

  void dormir() => print('Dorme como um animal');

  @override
  String toString(){
    return 'idade:$idade, Docil:$docil, Coluna:$coluna';
  }
}

abstract class Mamifero extends Animal{
  String? sexo;
  String? desenvolvimento;

  Mamifero.placentario(this.sexo,{required String idade,required bool docil}) : super.vertebrado(idade,docil: docil){
    this.desenvolvimento = 'Placentário';
    // super aponta para super instância
  }

  Mamifero.Marsupial(this.sexo,{required String idade,required bool docil}) : super.vertebrado(idade,docil:docil){
    this.desenvolvimento = 'Placentário + bolsa';
  }

  Mamifero.monotremado(this.sexo,{required String idade,required bool docil}) : super.vertebrado(idade,docil:docil){
    this.desenvolvimento = 'Ovo';
  }

  void alimentar(){
    print('Se alimenta como um. ');
  }

  void reproduzir();

  @override
  String toString(){
    return 'Sexo:$sexo, Desenvolvimento:$desenvolvimento ${super.toString()}';
  }
}

class Cao extends Mamifero{
  String? nome;
  String? raca;

  Cao.domestico(this.nome,this.raca,String sexo,{String idade = 'indefinido',bool docil = true}) : super.placentario(sexo, idade: idade, docil: docil);
  Cao.selvagem(this.nome,this.raca,String sexo,{String idade = 'indefinido', bool docil = false}) : super.placentario(sexo, idade: idade, docil: docil);

  void acao() => print('Late como um cão !!!');
  @override
  void reproduzir() => print('Reproduz como um cão !!! ');
  @override
  void alimentar(){
    super.alimentar();
    print('Cão');
  }
  @override
  void dormir() => print('Dorme como um Cão');

 @override
 String toString() => 'Nome:$nome, Raça:$raca ${super.toString()}';

}

void main(List<String> args){
  var cao = Cao.domestico('Matar','pug', 'fêmea',idade:'3',docil: true);
  Cao cao1 = Cao.selvagem('Maick', 'Vira lata', 'Masculino');

  print(identical(cao,cao1) ? 'São identicos' : 'São diferentes');

  print(cao.toString());
   cao..dormir()..alimentar()..acao()..reproduzir();
  print('');
  print(cao1);
  cao1..dormir()..alimentar()..acao()..reproduzir();
  

}