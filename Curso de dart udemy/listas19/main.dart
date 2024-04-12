import 'caracteristica.dart';
import 'carro.dart';
import 'multa.dart';
import 'pessoa.dart';
import 'proprietario.dart';
import 'venda.dart';
import 'vendedor.dart';

void main() {
  Pessoa p1 = Pessoa('Ana', 'Lins', identidade: 7778889908); // linha de instânciamento
  Pessoa p2 = Pessoa('Lucas', 'Santana');

  List<Pessoa> listPessoa = [p1, p2];

  listPessoa.add(Pessoa('João', 'lins', identidade: 78596899902));

  for (var i = 0; i < listPessoa.length; i++) {
    print('for: ${listPessoa[i].nome}, ${listPessoa[i]}, ${listPessoa[i].identidade}');
  }
  print('');

  for (var pessoa in listPessoa) {
    print('for in: ${pessoa.nome}, ${pessoa.sobreNome}, ${pessoa.identidade}');
  }

  print('');

  listPessoa.forEach((element) {
    print('forEach(): ${element.nome} ${element.sobreNome}, ${element.identidade}');
  });

  // ========= test============
  test();
}

void test() {
  List<Vendedor> listVendedor = [
    Vendedor(nome: 'Ana', listVenda: [Venda(produto: 'Pen drive', preco: 57.90), Venda(produto: 'Camisa', preco: 150.55), Venda(produto: 'Tenis', preco: 350.00)]),
    Vendedor(nome: 'Lucas', listVenda: [Venda(produto: 'Celular', preco: 3250.85), Venda(produto: 'Computador', preco: 4500.66), Venda(produto: 'Geladeira', preco: 4500.00)]),
    Vendedor(nome: 'Jota', listVenda: [Venda(produto: 'cueca', preco: 22.50), Venda(produto: 'Caderno', preco: 35.60), Venda(produto: 'canetas', preco: 12.50)])
  ];

  listVendedor.sort((a, b) => a.listVenda!.fold(0, (anterior, atual) => (anterior + atual.preco!).toInt()).compareTo(a.listVenda!.fold(0, (anterior, atual) => anterior + atual.preco!)));

  listVendedor.forEach((e) => e.listVenda!.sort((a, b) => a.preco!.compareTo(b.preco!)));

  print('');

  listVendedor.forEach((element) =>
      print('Nome:${element.nome}, ${element.listVenda!.length} vendas \t totalizando${element.listVenda!.fold(0.0, (anterior, atual) => anterior + atual.preco!)},\t  Vendas:${element.listVenda!.map((e) => e.preco).toList()}'));

  print('');

  listVendedor.forEach((e) {
    print('Nome: ${e.nome}, ${e.listVenda!.length} vendas, \t totalizando:${e.listVenda!.fold(0, (anterior, atual) => (anterior + atual.preco!).toInt())} \t vendas ${e.listVenda!.map((e) => e.preco).toList()}');
  });

  print('');

  // ======================================== exe 2 ============================================

  List<Proprietario> listProprietario = [
    Proprietario(nome: 'Lucas', endereco: 'Rua do pó número 103', listCarro: [
      Carro('Honda', 'Civic', 'QF53-36', Caracteristica(tipo: 'Passeio', qtdPassageiro: 8, potencia: 200, combustivel: 'Gasolina'), [
        Multa(descrisao: 'Excesso de velocidade', tipo: '', ponto: 7),
        Multa(descrisao: 'Dirigir alcoolizado', tipo: 'Gravissima', ponto: 7),
      ]),
      Carro('Fiat', 'Palio', 'CBA4321', Caracteristica(tipo: 'Passeio', qtdPassageiro: 5, potencia: 130, combustivel: 'Gasolina'), [
        Multa(descrisao: 'Estacionar em local proibido', tipo: 'Grave', ponto: 5),
        Multa(descrisao: 'Sem placa', tipo: 'Gravissima', ponto: 7),
      ])
    ]),
  ];

  // ordenando as multas em ordem crescente

  listProprietario.forEach((e) => e.listCarro.forEach((e) => e.listMulta.sort((a, b) => a.ponto!.compareTo(b.ponto!))));

  for (var i = 0; i < listProprietario.length; i++) {
    var listC = listProprietario[i].listCarro;
    for (var carro in listC) {
      carro.listMulta.forEach((e) {
        print('${listProprietario[i].nome}, t\ ${carro.modelo} ${carro.placa}, ${carro.caracteristica!.tipo},t\ ${e.descrisao}, ${e.tipo}, ${e.ponto}');
      });
    }
  }
}
