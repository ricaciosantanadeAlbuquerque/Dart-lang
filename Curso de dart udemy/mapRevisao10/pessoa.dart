class Pessoa{
  /// atributos de classe
  static final Map<String,Pessoa> _mapPessoas = Map();
  /// atribultos de instância
  final String nome;
  int? idade;
  double? peso;

// construtor factory
  factory Pessoa(String nome,{int? idade,double? peso}){
    if(_mapPessoas.containsKey(nome)) return _mapPessoas[nome]!;
    final novaPessoa = Pessoa._construtorPrivado(nome, idade, peso);
    _mapPessoas[nome] = novaPessoa;
    return novaPessoa;
  }

/// construtor Nomeado e privado
  Pessoa._construtorPrivado(this.nome,this.idade,this.peso);

  static void mostrarDetalhes({required String nome}){
    if(_mapPessoas.containsKey(nome)){
      print('Mostrar Detalhes: ${_mapPessoas[nome]!.nome}, Idade:${_mapPessoas[nome]!.idade}, peos:${_mapPessoas[nome]!.peso}');
    }else{
      print('$nome Não existe no map de pessoa');
    }
  }

  static void alterarDetalhes(String nome,{int? idade,double? peso}){
     if(_mapPessoas.containsKey(nome)){
      _mapPessoas[nome]!.idade = idade;
      _mapPessoas[nome]!.peso = peso;
     }else{
     print('$nome Não existe no map de Pessoa');
     }
  } 

  static void mostrarPessoa(){
    print(_mapPessoas);
    _mapPessoas.forEach((key,value) => print('Nome:${value.nome}, idade:${value.idade}, peso:${value.peso}'));
  }
  
@override
  String toString(){
    return '$nome, $idade, $peso';
  }
}