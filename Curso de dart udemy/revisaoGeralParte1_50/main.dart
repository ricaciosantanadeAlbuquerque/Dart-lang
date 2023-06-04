/// Closures ocorre quando uma funcao é declarada dentro do copro de outra funcao!
/// Podendo retornar as variáveis locais e da função superior.
void funcaoClosures() {
  var saudacao = (String nome) {
    var mensagem = (dynamic complemento) => print("\n Olá $nome $complemento \n"); // a função interna pode enchergar tudo da funcao pai

    mensagem("Bem Vindo!!"); // chamada a funcao interna
  };
  print(saudacao);
  saudacao('Lucas'); // chamada a closures
//================================================================

  var somar = (int valorA) {
    return (valorB) {
      return valorA + valorB;
    };
  };

  var somarDez = somar(20);

  print(somarDez);
  print(somarDez(10));
//================================================================

  Function multiplicar(num num1) {
    return (num num2) {
      return num1 * num2;
    };
  }

  var resultado = multiplicar(7);
  print(resultado);
  print(resultado(55));
  //================================================================
  Function porcentagem(dynamic desconto) => (dynamic valor) => desconto * valor;

  var resultado2 = porcentagem(0.8);
  print(resultado2);
  print(resultado2(100));
  //================================================================
  Function numerador(num valor1) => (num denominador) => valor1 * denominador;

  var resultado3 = numerador(100);
  print(resultado3);
  var fx = resultado3(100);
  print(fx);
  //================================================================

  var novoObjeto = () {
    var id = 0;
    var objetoCriado = (String nome, descricao) {
      return 'id: ${(++id).toString().padLeft(2, '0')}, nome: $nome, descrção: ${descricao}'; // id++ pós incremento, ++id pré incremento
    };
    return objetoCriado; // retornando  referência a funcao mais interna
  };
  var objeto = novoObjeto();
  print(objeto);
  var arrayClosures = [objeto('Ricacio', 'ricaciozz@gmail.com')];
  arrayClosures.add(objeto('(083)987874721', 'Dev Flutter'));
  arrayClosures.add(objeto('Valor', 3300.00));

  for (var item in arrayClosures) {
    print(item);
  }
//================================================================
  var novoObjeto1 = () {
    var id = 0;
    var novoObjetoCriado1 = (String nome, descricao) {
      return Objeto.fromMap(map: {'id': (++id).toString().padLeft(2, '0'), 'nome': nome, 'descricao': descricao});
    };
    return novoObjetoCriado1;
  };

  print(novoObjeto1);
  var caixa = novoObjeto1();

  List<Objeto> listaOb = [caixa('Ana', 1550), caixa('Carmem', 3500)];

  listaOb.add(caixa('Lucas', 'não toma banho !'));

  for (var item in listaOb) {
    print("");
    print(item.toString());
    print("");
  }
}

void main() {
  funcaoClosures();
}

//=======================================================================
class Objeto {
  String id, nome;
  dynamic descricao;

  Objeto({required this.nome, required this.descricao, required this.id});

  factory Objeto.fromMap({required Map<String, dynamic> map}) {
    return Objeto(nome: map['nome'], descricao: map['descricao'], id: map['id'].toString());
  }

  @override
  String toString() => 'id:$id, nome:$nome, descrição:$descricao';
}
