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

  String textoInt = '10';
  String textoDouble = '10.12345';
  int numeroInt = int.parse(textoInt);
  var numeroDouble = double.parse(textoDouble).toStringAsFixed(2);
  print('ParseInt: $numeroInt, ParseDouble: $numeroDouble');
  // ignore: unnecessary_type_check
  print(
      // ignore: unnecessary_type_check
      'ParseString: ${numeroDouble.toString() is String}'); // is é uma validação retorna true ou false

  double peso = 65;
  double altura = 1.72;

  var imc = peso / (altura * altura);

  if (imc < 18.5) {
    print('IMC ${imc.truncate()} Abaixo do peso');
  } else if (imc >= 18 && imc < 25) {
    print('IMC ${imc.truncate()} peso Normal');
  } else if (imc >= 30 && imc < 35) {
    print('IMC ${imc.truncate()} Obesidade Grau 1');
  } else if (imc >= 35 && imc < 40) {
    print('IMC ${imc.truncate()} Obesidade Grau 2');
  } else {
    print('IMC ${imc.truncate()} Obesidade Grau 3');
  }
}
