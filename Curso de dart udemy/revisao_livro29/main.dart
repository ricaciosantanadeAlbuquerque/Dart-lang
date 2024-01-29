void funcaoClosures() {
  print('Closures sem retorno');

  var saudacao = (String nome) {
    var mensagem = (complemento) => print('Olá $nome! $complemento');
    mensagem('Seja bem vindo ');
  };

  print(saudacao);
  saudacao('Ana');

  print('Closures com retorno');

  Function soma(int valorA) {
    return (valorB) {
      return valorA + valorB;
    };
  }

  print('');

  var somarDez = soma(10);
  print(somarDez);

  print(somarDez(20));

  Function porcentagem(desconto) => (valor) => desconto * valor;

  var recebeF = porcentagem(0.9);
  print(recebeF);
  print(recebeF(100));

  var recebeF2 = porcentagem(0.8);
  print(recebeF2);
  print(recebeF2(200));

  var novoObjeto = () {
    var id = 0;
    var objetoCriado = (String nome, descricao) {
      return 'id: ${(++id).toString().padLeft(2, '0')} nome:$nome, descrição:$descricao';
    };
    return objetoCriado;
  };
  var objeto = novoObjeto();
  print('');
  print(objeto);
  print('');

  var listaObjetos = [objeto('Ricacio', 1.72)];
  listaObjetos.add(objeto('iPhone', 3000));
  listaObjetos.add(objeto('Fones', 100));

  for (var objeto in listaObjetos) {
    print(objeto);
  }
}

void main() {
  funcaoClosures();
}
