void main(List<String> args){
 Carro c1 = new Carro('Honda','Civic');
 Carro c2 = new Carro('Toyota','Corola');
 Carro c3 = new Carro('Fiat','Palio');

 Map<String,Carro> carros = {'0':c1,'1':c2};
 carros['2'] = c3;
// Se as chaves do Map<> forem  String ou tipo numerico, e estiverem em ordem, então podemos usar o for()
 for(var i  =0; i < carros.length;i++){
   print('for: $i modelo ${carros['${i}']!.modelo}');
 }

  print('');

 for(var chave in carros.keys){
   final valor = carros[chave];
   print('Marca:${valor!.marca}, modelo: ${valor.modelo}');
 }

 print('');
 
 
 carros.forEach((chave,valor) => print('Marca:${valor.marca}, modelo:${valor.modelo}'));

 Pessoa p1 = new Pessoa('ricacio',idade: 30,peso:66);
 Pessoa p2 = new Pessoa('lucas',idade:27,peso:70);

 Pessoa('ricacio',idade:29);
 Pessoa.mostrarPessoas();
 Pessoa('lucas',idade:13);
 Pessoa('leila');
 Pessoa.mostrarPessoas();
 p1.peso = 70;
 Pessoa.alterarDetalhes('leila',idade:29,peso:45);
 Pessoa.mostrarDetalhes('leila');
 p2.peso = 61.1;
 print('');
 Pessoa.mostrarPessoas();
}

class Carro{
  String marca,modelo;

  Carro(this.marca,this.modelo);

}


class Pessoa{
  static final Map<String,Pessoa> _pessoas = new Map(); // singleton
  final String nome;
  int? idade;
  double? peso;

  factory Pessoa(String nome,{int? idade, double? peso}){
    if(_pessoas.containsKey(nome)) return _pessoas[nome]!;
    final novaPessoa = Pessoa._construtorPrivado(nome,idade,peso);
    _pessoas[nome] = novaPessoa;
    return novaPessoa;
  }
  /// construtor nomeado e privado
  Pessoa._construtorPrivado(this.nome,this.idade,this.peso);

  static void mostrarDetalhes(String nome){
    if(_pessoas.containsKey(nome)){
      print('Detalhes: nome:$nome, idade:${_pessoas[nome]!.idade}, peso:${_pessoas[nome]!.peso}');
    }else{
      print('$nome, Não existe no map de Pessoas');
    }
  }

 static void alterarDetalhes(String nome,{int? idade,double? peso}){
   if(_pessoas.containsKey(nome)){
    _pessoas[nome]!.idade = idade!;
    _pessoas[nome]!.peso = peso!;
    print('Alteração: nome:$nome, idade:${_pessoas[nome]!.idade}, nome:${_pessoas[nome]!.peso}');
   }else{
    print('$nome não existe no map de pessoas');
   }
 }

 static void mostrarPessoas(){
  print('Pessoas:$_pessoas');
  _pessoas.forEach((key,value) => print('chave:$key, Idade:${value.idade}, peso:${value.peso}'));
 }

 @override
 String toString() => '$nome, $idade';
}