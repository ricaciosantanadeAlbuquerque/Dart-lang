class Pessoa{
  String? nome,idade,sexo;

  void dormi(){
    print('Dormindo');
  }

  void comendo(){
    print('Comendo');
  }

  void trabalhando(){
    print('trabalhando');
  }

  @override
  String toString() => 'Nome:$nome, idade:$idade, sexo:$sexo';
}

void main(List<String> rags){
  Pessoa pessoa = Pessoa();

  pessoa.nome = 'ricacio';
  pessoa.idade = '30';
  pessoa.sexo = 'Masculino';


  print('Nome:${pessoa.nome}, Idade:${pessoa.idade}, sexo:${pessoa.sexo}');

  pessoa..dormi()..comendo()..trabalhando();
}