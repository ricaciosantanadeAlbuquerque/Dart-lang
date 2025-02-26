void main(List<String> args) {
  print('Condicionais (if else)');

  /// Estrutura condicional simples
  if (true) {
    print('Estrutura condicional simples !!');
  }

  /// estrutura condiconal composta
  var idade = 18;

  if (idade >= 18) {
    print('Maior de idade');
  } else {
    print('Menor de Idade');
  }

  /// estrutura condicional encadeada

  if (idade < 16) {
    print('Não tem idade para votar.');
  } else if (idade >= 16 && idade <= 17 || idade >= 70) {
    print('Voto opcional !');
  } else {
    print('Voto obrigatório.');
  }

  /// estrutura condiconal aninhada

  var a = 10,
      b = 20,
      c = 30; // variáveis de mesmo tipo podem ser declaradas na mesma linha separadas por virgula

  if (a > b) {
    print('A > B $a $b');
  } else {
    if (c < b) {
      print('C B $c $b');
    } else {
      if (b > a) {
        print('B A $b $a');
      }
    }
  }
}
