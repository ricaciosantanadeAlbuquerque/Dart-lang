class Carro{

  String marca,modelo;
  Carro(this.marca,this.modelo);

  @override
  String toString() => '$marca, $modelo';

}

void main() {
  Carro c1 = new Carro('Honda','Civic'); // linha de instanciamento
  Carro c2 = Carro('Toyota','corola');
  Carro c3 = Carro('Fiat','Palio');

  Map<String,Carro> mapCarros = {'0':c1,'1':c2};
  mapCarros['2'] = c3;

  print(mapCarros);
  print('');

  for(var i = 0; i < mapCarros.length;i++){
     print('Marca:${mapCarros['${i}']?.marca}, modelo:${mapCarros['${i}']?.modelo}');
  }

  print('');

  for(var chave in mapCarros.keys){
    final result = mapCarros[chave];
    print('chave:$chave, marca:${result?.marca}, modelo:${result?.modelo}');
  }
 
  print('');

  mapCarros.forEach((chave,valor) => print('Marca:${valor.marca}, modelo:${valor.modelo}'));

  Pessoa p1 = Pessoa('ricacio',idade:30,peso:65);
  Pessoa p2 = Pessoa('lucas',idade:28,peso:45);

  Pessoa.mostrarPessoa();
  Pessoa('ricacio',idade:27);
  Pessoa('lucas',idade:22);
  Pessoa('marta');
  print('');
  Pessoa.mostrarPessoa(); // método de classe visível a classe

  Pessoa.alterarDetalhes('ricacio',idade:22,peso:66); // método de classe visível a classe
  Pessoa.mostrarDetalhes('ricacio');
  /**
   * Os objetos (pessoa) existem no Map<> singleton. Porém também foram retornados e alocados em p1 e p2 graças ao construtor factory 
   *  Que além de adicionar os objetos pessoas no map na chave passada "nome" também retorna o valor; 
   */
  p1.idade = 32;
  p2.idade = 29;
  
  Pessoa.mostrarPessoa(); // método de classe visível a classe

  /**
   * Atributos static e métodos static são visiveis a classe.
   * nome da classe ponto.
   * 
   * Os métodos e atributos que não tem a palavra static são visíveis a instância da classe. 
   * Neste caso é nessario criar um objeto/instância Pessoa()
   */

}

class Pessoa{
  /// atributo de classe
  static final Map<String,Pessoa> _mapPessoas = Map();
  /// Atributos de instância
  final String nome;
  int? idade;
  double? peso;

 // construtor factory
  factory Pessoa(String nome,{int? idade,double? peso}){
    if(_mapPessoas.containsKey(nome)) return _mapPessoas[nome]!; // buscanco a chave  via containsKey() _mapPessoas[nome] == object Pessoa
    final novaPessoa = Pessoa._construtorPrivado(nome, idade, peso);
    _mapPessoas[nome] = novaPessoa;
    return novaPessoa;
  }

 // construtor nomeado e privado

  Pessoa._construtorPrivado(this.nome,this.idade,this.peso);

  /// método de classe
  static void mostrarDetalhes(String nome){
    if(_mapPessoas.containsKey(nome)){
      print('DETALHES: nome:${_mapPessoas[nome]!.nome}, idade:${_mapPessoas[nome]!.idade}, peso:${_mapPessoas[nome]!.peso}');
    }else{
      print('$nome não existe no map de Pessoas');
    }
  }
 /// método de classe
  static void alterarDetalhes(String nome,{int? idade,double? peso}){
    if(_mapPessoas.containsKey(nome)){
      _mapPessoas[nome]!.idade = idade;
      _mapPessoas[nome]!.peso = peso;
      print('ALTERAÇÃO nome:$nome, idade: ${_mapPessoas[nome]!.idade}, peso:${_mapPessoas[nome]!.peso}'); 
    }else{
    print('$nome não existe no map de Pessoas');
    }
  }

  /// método de classe
  static void mostrarPessoa(){
    print(_mapPessoas);
    _mapPessoas.forEach((key,value){
      print('Nome:${value.nome}. Idade:${value.idade}, peso:${value.peso}');
    });
  }
  @override
  String toString() => '$nome, $idade, $peso';
}
