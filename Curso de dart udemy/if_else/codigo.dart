void main(List<String> args) {
  // estrutura condicional simples
/**
 *  a função if() sempre espera um true, sej de um teste condicional 2 > 1 ou teste lógico true && true 
   se a condição for true ele executa o testo entre {} chaves que é o corpo da função . 
 */
  if (true) {
    print("Seja bem vindo ");
  }

  // Estrutura condicional composta

  // ignore: dead_code
  if (!true) {
    // não true é igual a false   por tanto esta condição não será satisfeita já que o if espera um true
    print("Deu erro ");
  } else {
    print("como vai !");
  }

  var numero1 = 10;
  var numero2 = 5;

  if (10 < 5) {
    // false 10 não é menor do que do que 5  port tanto  ele executa a condição else{}
    print("É menor !");
  } else {
    print("É maior ");
  }

  // Estrutura condicional encadeada
  var idade = 17;

  if (idade < 14) {
    print("Criança");
  } else if (idade < 18) {
    print("Adolecente");
  } else {
    print("Adulto");
  }

  String textoInt = "10";
  String textDouble = "10.12345";
  int numeroInt = int.parse(textoInt);
  double numeroDouble = double.parse(textDouble);
  print(numeroDouble.toStringAsFixed(2)); // toStringAsFixed() estou dizendo que mostre o valor de numeroDouble porém só com 2 casas decimais
  print("numeroInt: ${numeroInt} numeroDouble: ${numeroDouble} ");
  print(numeroDouble.runtimeType);
  print(numeroDouble is String);

  // Estrutura condicional  Aninhada ou uma dentro da outra

  var num1 = 18, num2 = 15, num3 = 10;

  if (num1 > num2) {
    // true
    if (num2 > num3) {
      // true
      print("$num2 é maior do que $num3");
    } else {
      print("$num2 não é maior do que $num3");
    }
  } else {
    print("falso! não é maior ");
  }

  // calculo do IMC
  double peso = 120;
  double altura = 1.83;
  var tmc = peso / (altura * altura); // peso divido por altura * altura  IMC
  var imc = double.parse(tmc.toStringAsFixed(2));
  if(imc < 18.5){
    print("IMC $imc A baixo do peso ");
  }else if(imc >= 18.5 && imc < 25){
    print("IMC $peso Peso normal ");
  }else if(imc >= 25 && imc < 30){
    print("IMC $imc Sobrepeso");
  }else if(imc >= 30 && imc < 35){
    print("IMC $imc Obesidade grau 1");
  }else if(imc >= 35 && imc < 40){
    print("IMC $imc Obesidade grau 2");
  }else{
    print("IMC $imc Obesidade grau 3");
  }
}
