class Pessoa{
  static final Map<String,Pessoa> _mapPessoa =  Map();
  final String nome;
  int? idade;
  double? peso;

  factory Pessoa(String nome,{int? idade,double? peso}){
    if(_mapPessoa.containsKey(nome)) return  _mapPessoa[nome]!;
    final novaPessoa = Pessoa._construtorPrivado(nome,idade,peso);
    _mapPessoa[nome] = novaPessoa;
    return novaPessoa;
  }

  Pessoa._construtorPrivado(this.nome,this.idade,this.peso);

 static  void mostrarDetalhes(String nome){
    if(_mapPessoa.containsKey(nome)){
      print('Detalhes: Nome:$nome, idade:${_mapPessoa[nome]!.idade}, Peso:${_mapPessoa[nome]!.peso}');
    }else{
      print('$nome não existe no map de pessoa !!!');
    }
  }

  static void alterarDetalhes(String nome,{int? idade,double? peso}){
    if(_mapPessoa.containsKey(nome)){
       _mapPessoa[nome]!.idade = idade;
       _mapPessoa[nome]!.peso = peso;
       print('Detalhes alterados $idade, $peso');
    }else{
       print('$nome não existe no map de pessoa !!!');
    }
  }

  static void mostrarPessoa(){
    print(_mapPessoa);
    _mapPessoa.forEach((key,value) => print('nome:${value.nome}, idade:${value.idade}, peso:${value.peso}'));
  }
  
  @override
  String toString() => '$nome, $idade, $peso';
}