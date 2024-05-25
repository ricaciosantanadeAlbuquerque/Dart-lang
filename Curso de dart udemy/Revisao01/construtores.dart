class Animal{
  String? tipo;
  int? idade;
  String sexo;

  Animal(this.tipo,this.idade,this.sexo);

  void come(){
    print('Comendo como um animal');
  }

  void dormindo(){
    print('Dormindo como um animal');
  }
  @override
  String toString() => 'Tipo:$tipo, Idade:$idade, Sexo:$sexo';
}



void main(){
 Animal animal  = Animal('gato', 7, 'masculino');
 print(animal.toString());
 animal..dormindo()..come(); 
}