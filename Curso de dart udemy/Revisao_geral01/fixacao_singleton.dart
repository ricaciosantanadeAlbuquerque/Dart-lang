import 'dart:math';

class Pessoa1{
  static final Pessoa1 instancia = Pessoa1._construtorNomeado();
  String? nome;

  Pessoa1._construtorNomeado();
}

class Pessoa2{
 static final Pessoa2 _instancia = Pessoa2._construtorNomeado();
 String? nome;
 Pessoa2._construtorNomeado();

 static Pessoa2 get instancia => _instancia; // this._instancia Gera ERRO! ja que  _instancia é static
}

class Pessoa3{
 static final Pessoa3 instancia = Pessoa3._construtorNomeado(Random().nextInt(99999999 + 1));
 String? nome;
 final int _identidade;

 factory Pessoa3() => instancia;

 Pessoa3._construtorNomeado(this._identidade);

 int get  identidade => this._identidade;
}

class Pessoa4{
 static Pessoa4? _instancia;
  String? nome;
  final int  _identidade;

  factory Pessoa4({required String nome,int? identidade}){
    identidade = (identidade != null) ? identidade : Random().nextInt(99999999 + 1);
    return _instancia ??= Pessoa4._construtorNomeado(nome, identidade);
  }
  /**
   * ??= operador se asignação igual 
   * caso instância seja nula, será gerado um objeto e alocado em _instancia. Que por sua vez será retornada pelo construtor factory  
   */
  Pessoa4._construtorNomeado(this.nome,this._identidade);

  int get identidade => this._identidade;

  static Pessoa4? get instancia => _instancia;
}


void singletonStatic(){
  //var p1 = Pessoa1(); ERRO! está classe não possui construtores padrões.
  var p1 = Pessoa1.instancia;
  p1.nome = 'ricacio';

  print(Pessoa1.instancia.nome);

  print(identical(Pessoa1.instancia,p1)); // A mesma instância de classe o mesmo objeto.
  /**
   * No padrão singleton só uma instância é gerada. e nada mais. 
   */
}


void singletonGet(){
  var p1 = Pessoa2.instancia; // o método get instancia é static  por isso pode ser acessado pela classe.
  var p2 = Pessoa2.instancia;
  p1.nome = 'lucas';

  print(p2.nome);

}

singletonFactory(){
var p1 = Pessoa3(); // o construtor factory sempre irá retorna a mesma instância de classe
p1.nome  = 'Ana';
var p2 = Pessoa3.instancia;

print(identical(p1, p2));
print(p2.nome);

}

void singletonInstancia(){
 var p1 = Pessoa4(nome: 'Ana Julia',identidade: 789456123);
 print(Pessoa4.instancia!.nome);

 print(identical(p1,Pessoa4.instancia));

}

void main(){
singletonStatic();
print('');
singletonGet();
print('');
singletonFactory();
singletonInstancia();

}