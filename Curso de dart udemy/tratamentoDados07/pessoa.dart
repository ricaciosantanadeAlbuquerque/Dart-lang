import 'dart:io';
class PessoaSingleton{
  // por ser final, sua referência não pode ser alterada eeee por ser static torna-se visível a classe
  static final Map<String,PessoaSingleton> _mapPessoa = Map(); // singleton Map atributo de classe
  // atributos de instância
  String? _nome;
  int?  _idade;
  double? _peso;
  double? _salario;

  // construtor factory, sempre executa primeiro

  factory PessoaSingleton(String keyCpf,{required String nome,required int idade,required double peso,required double salario}){
     if(_mapPessoa.containsKey(keyCpf)) return _mapPessoa[keyCpf]!; // se retorna desta linha é porque é porque este objeto já existe para tal chave
     var instancia = PessoaSingleton._Privado(nome, idade, peso, salario);
     _mapPessoa[keyCpf] = instancia;
     return instancia;
  }
// construtor nomeado e privado
  PessoaSingleton._Privado(this._nome,this._idade,this._peso,this._salario); 

// get and set. métodos acessores e modificadores
  String? get nome => this._nome;

  void set nome(String? nome) => this._nome = nome;

  int? get idade => this._idade;

  void set idade(int? idade) =>  this._idade = idade;

  double? get peso => this._peso;

  void set peso(double? peso) => this._peso = peso;

  double? get salario => this._salario;

  void set salario(double? salario) => this._salario = salario;

  /**
   * Como o atributo _mapPessoa é  static, por obrigatoriedade deve ser manipulado por um método static.
   * Já que métodos de instância não podem visualizar ou manipular atributos de instânica. 
   */

 static void visualizarDetalhesPessoa({required String KeyCpf}){
    if(_mapPessoa.containsKey(KeyCpf)){
      print('CPF:$KeyCpf, Nome:${_mapPessoa[KeyCpf]?.nome}, Idade:${_mapPessoa[KeyCpf]?.idade},\nPeso:${_mapPessoa[KeyCpf]?.peso}, Salário:${_mapPessoa[KeyCpf]?.salario}');
    }else{
      print('ERRO! este CPF não existe na lista de Pessoas');
      exit(0);
    }
  }

  static void alterarDetalhesPessoa({required String keyCpf,required String nome,required int idade,required double peso,required double salario}){
    if(_mapPessoa.containsKey(keyCpf)){
     _mapPessoa[keyCpf]?.nome = nome;
     _mapPessoa[keyCpf]?.idade = idade;
     _mapPessoa[keyCpf]?.peso = peso;
     _mapPessoa[keyCpf]?.salario = salario;
     print('Dados alterados com sucesso para a chave $keyCpf!!!\n');
    }else{
      print('ERRO! este CPF não existe na lista de pessoas');
      exit(0);
    }
  }


  static void pessoas(){
   if(_mapPessoa.isNotEmpty){
    print(_mapPessoa);
   }else{
    print('ERRO! lista vazia.');
   }
  }

 @override 
  String toString() => 'Nome:$nome, Idade:$idade, Peso:$peso, salario:$salario';
}