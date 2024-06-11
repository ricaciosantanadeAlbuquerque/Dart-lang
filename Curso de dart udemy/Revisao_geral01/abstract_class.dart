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
    print('Dorme como um animal');
  }

  @override
  String toString() => 'Idade:$idade, docil:$docil, coluna:${this.coluna! ? 'Sim ' : 'Não'}';
}



 abstract class Mamifero extends Animal{
  String? sexo;
  String? desenvolvimento;

  Mamifero.placentario(this.sexo,String idade,{required bool docil}) : super.vertebrado(idade,docil: docil){
    this.desenvolvimento =  'Placentário';
  }

  Mamifero.marsupial(this.sexo,String idade,{required bool docil}) : super.vertebrado(idade,docil:docil){
    this.desenvolvimento = 'Placentário + bolsa';
  }

  Mamifero.monotremado(this.sexo,String idade,{required bool docil}) : super.vertebrado(idade,docil:docil){
    this.desenvolvimento = 'Ovo';
  }

  void alimentar(){
    print('Se aleminta como');
    print('um');
  }
  
  void reproduzir();

  @override
  String toString() => 'Sexo:${this.sexo}, Desenvolvimento:$desenvolvimento ' + super.toString();
}


class Cao extends Mamifero{
  String? nome;
  String? raca;

  Cao.domestico(this.nome,this.raca,{String sexo ='indefinido',String idade = 'indefinido',bool docil = true}) : super.placentario(sexo, idade, docil: docil);
  Cao.selvagem(this.nome,this.raca,{required String sexo,required String idade, required bool docil}) : super.placentario(sexo, idade, docil: docil);

  void acao(){
    print('Late como um cão');
  }

@override
void reproduzir(){
  print('Reproduz como um cão');
}

@override
void dormir() => print('Dorme como um cão !!');

@override
void alimentar(){
  super.alimentar();
  print('Cão');
}
  @override 
  String toString() => 'Nome:$nome, Raça:$raca ' + super.toString();
}

void main(List<String> args){
  var cao  = Cao.domestico('Lulu','vira lata',sexo: 'Fêmea',docil: true,idade: '3');
  
  print('Nome:${cao.nome}, Raça: ${cao.raca}, Sexo:${cao.sexo}, Idade:${cao.idade}, docil:${cao.docil}');

  cao..dormir()..alimentar()..reproduzir()..acao(); // operador em cascata ..

}