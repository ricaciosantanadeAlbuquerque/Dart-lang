import 'pessoa.dart';

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
}
