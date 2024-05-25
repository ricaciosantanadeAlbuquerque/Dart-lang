abstract class Animal{
  String? idade;
  bool? docil;
  bool? colune;

  Animal.vertebrado(this.idade,{this.docil}){
    this.colune = true;
  }
  Animal.invertebrado(this.idade,{this.docil}){
    this.colune = false;

  }

  void dormir(){
    print('Dormi como um animal !');
  }
}

abstract class Mamifero extends Animal{
  String? sexo;
  String? desenvolvimento;

  Mamifero.placentario(this.sexo,{required String idade,required bool docil}): super.invertebrado(idade,docil:docil){
    this.desenvolvimento = 'Placentários';
  }
  Mamifero.marsupiais(this.sexo,{required String idade,required bool docil}): super.invertebrado(idade,docil: docil){
    this.desenvolvimento = 'Placentarios + Bolsa extrena';
  }
  Mamifero.monotremados(this.sexo,{required String idade,required bool docil}): super.invertebrado(idade,docil: docil){
    this.desenvolvimento = 'Ovo';
  }

  void alimentar(){
    print('Se alimenta');
    print('como um');
  }
  void reproduzir();
}


class Cao extends Mamifero{
  String? nome;
  String? raca;

  Cao.domestica(this.nome,this.raca,{required String sexo,String idade = 'indefinido', bool docil = true}): super.placentario(sexo, idade: idade, docil: docil);
  Cao.selvagem(this.nome,this.raca,{required String sexo,String idade = 'indefinido', bool docil = false}) :super.placentario(sexo, idade: idade, docil: docil);

  @override
  void reproduzir() => print('Se reproduz como um cão');

  @override
 void alimentar(){
  super.alimentar();
  print('Cão');
}
 @override
 void dormir() => print('Dorme como um cão');

 void acao(){
  print('Late como um cão');
 }

}

void main(List<String> args){
  var cao = Cao.domestica('LULU', 'Vira lata', sexo:'Masculino');
  print('Nome: ${cao.nome}, raca: ${cao.raca}, sexo: ${cao.sexo}, idade: ${cao.idade}, docil; ${cao.docil}');
  print('Desenvolvimento: ${cao.desenvolvimento}, tipo: ${cao.colune! ? 'Vertebrado' : 'Invertebrado'},');

  cao..dormir()..alimentar()..reproduzir()..acao();
}

