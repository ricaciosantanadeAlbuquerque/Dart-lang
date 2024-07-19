class Carro{
  String? marca,modelo;
  Carro(this.marca,this.modelo);
  @override
  String toString() => 'Marca:$marca, Modelo:$modelo';
}

class Pessoa{
  static final Map<String,Pessoa> _mapPessoas = Map();
  final String nome;
  int? idade;
  double? peso;

  factory Pessoa(String nome,{int? idade,double? peso}){
    if(_mapPessoas.containsKey(nome)) return _mapPessoas[nome]!;
    final novaPessoa = Pessoa._construtorPrivado(nome,idade,peso);
    _mapPessoas[nome] = novaPessoa;
    return novaPessoa;
  }

  Pessoa._construtorPrivado(this.nome,this.idade,this.peso);

  static void mostrarDetalhes(String nome){
    if(_mapPessoas.containsKey(nome)){
      print('DETALHES: nome:${_mapPessoas[nome]!.nome}, idade:${_mapPessoas[nome]!.idade}, peso:${_mapPessoas[nome]!.peso}');
    }else{
      print('$nome não existe no map de Pessoas');
    }
  }

  static void alterarDetalhes(String nome,{int? idade,double? peso}){
    if(_mapPessoas.containsKey(nome)){
      _mapPessoas[nome]!.idade = idade;
      _mapPessoas[nome]!.peso = peso;
      print('Alterações feitas: nome:$nome, idade:${_mapPessoas[nome]!.idade}, peso:${_mapPessoas[nome]!.peso}');
    }else{
      print('$nome Não existe no map Pessoas');
    }
  }

  static void mostrarPessoas(){
    print('Pessoas: $_mapPessoas');
    _mapPessoas.forEach((key,value) => print('chave:$key, idade:${value.idade}, peso:${value.peso}'));
  }

@override
 String toString(){
  return '$nome, $idade';
 }

}
void main(List<String> args){
 Carro carro1 = Carro('Honda','Civic');
 Carro carro2 = Carro('Toyota','Corola');
 Carro carro3 =  new Carro('Fiat','Palio');

 Map<String,Carro> mapCarros = {'0':carro1,'1':carro2};
 mapCarros['2'] = carro3;

 for(var i = 0; i < mapCarros.length;i++){
   print('for: $i  Marca: ${mapCarros['${i}']!.marca}, Modelo:${mapCarros['${i}']!.modelo}');
 }

for(var chave in  mapCarros.keys){
  final valor = mapCarros[chave];
   print('Chave: $chave, marca:${valor!.marca}, modelo:${valor.marca}');
}

print('\n');
mapCarros.forEach((chave,valor) => print('Marca:${valor.marca}, modelo:${valor.modelo}'));

 Pessoa pessoa1 = Pessoa('ricacio',idade:30,peso:66);
 Pessoa pessoa2 = Pessoa('lucas',idade:28,peso:80);

 Pessoa.mostrarPessoas();

 // tentando  sobrepor os objetos singleton dentro do map
 Pessoa('ricacio',idade:63);
 Pessoa('lucas',idade:13);
 Pessoa('Chloe');

 print('');
 Pessoa.mostrarPessoas();
 pessoa1.peso = 72;
 pessoa2.idade = 32;
 print('');
 Pessoa.mostrarPessoas();
 Pessoa.mostrarDetalhes('ricacio'); // devemos passar chave do map 
 Pessoa.alterarDetalhes('ricacio',idade:28,peso:65);
 Pessoa.mostrarPessoas();
}