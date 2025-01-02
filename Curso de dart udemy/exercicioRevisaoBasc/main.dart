import 'dart:io';
import 'dart:math';

import 'animal.dart';
import 'cachorro.dart';
import 'gato.dart';
import 'pessoa.dart';

void main(List<String> args) {
  // inicio();
  // nome
  //entradaSaida();
  // calculadora
  //calculadoraBac();
  // conversaoTipo();
  //condicional();
  //imprimir100();
  //somandoValor();
  //diasSemana();~
  //lista();
  //matriz();
  // print(soma(10, 25));
  //parImpa(num1: 2);
  //print(maiuscula('RICACIO'));

  var pessoa1 = Pessoa();

  pessoa1
    ..nome = "Ricacio Santana"
    ..idade = 30;

  print("Nome: ${pessoa1.nome}");
  print("Idade: ${pessoa1.idade}");

  var animal = Animal(tipo: 'Animal');
  Cachorro cachorro = Cachorro(nome: "MAX", idade: 3, tipo: "Cachorro");
  Gato gato = Gato(nome: "Frajola", idade: 4, tipo: "Gato");

  chamada(animal);
  chamada(cachorro);
  chamada(gato);
}

void chamada(Animal animal) {
  if (animal.tipo == 'Gato') {
    animal.fazerSom();
  } else if (animal.tipo == "Cachorro") {
    animal.fazerSom();
  } else {
    animal.fazerSom();
  }
}

void inicio() {
  print("Hello Word");
}

void entradaSaida() {
  print("Digite seu nome ! ");
  String? entradaNome = stdin.readLineSync();

  if (entradaNome != null && entradaNome.isNotEmpty)
    print("Nome: ${entradaNome}");
}

void calculadoraBac() {
  print("Digite um número !");
  String? entradaNumero1 = stdin.readLineSync();
  print("Digite um número !");
  String? entradaNumero2 = stdin.readLineSync();

  if (entradaNumero1 != null && entradaNumero2 != null) {
    try {
      num numero1 = num.parse(entradaNumero1);
      num numero2 = num.parse(entradaNumero2);

      print("Soma:${numero1 + numero2}");
      print("Subtração: ${numero1 - numero2}");
      print("Multiplicação: ${numero1 * numero2}");
      print("Divisão: ${numero1 / numero2}");
    } catch (e, s) {
      print("Exceção: $e");
      print("Stack Trace: $s");
    }
  } else {
    print("ERRO!");
    exit(0);
  }
}

void conversaoTipo() {
  print("Digite um valor decimal");
  String? entrada = stdin.readLineSync();

  if (entrada != null && entrada.isNotEmpty) {
    try {
      double valor = double.tryParse(entrada) ?? 0;
      int num1 = valor.toInt();
      print("Valor inteiro $num1");
    } catch (e, s) {
      print("Exceção $e");
      print("Stack trace $s");
    }
  }
}

void condicional() {
  print("Por favor digite um número !");
  String? entrada = stdin.readLineSync();

  if (entrada != null && entrada.isNotEmpty) {
    try {
      int numero = int.parse(entrada);

      if (numero == 0) {
        print("Zero !");
      } else if (numero > 0) {
        print("Positivo !");
      } else if (numero < 0) {
        print("Negativo !");
      }
    } catch (e) {
      print("Exceção: $e");
    }
  }
}

void imprimir100() {
  for (var i = 1; i <= 100; i++) {
    print("Número: $i");
  }
}

void somandoValor() {
  int valor = 1;
  int soma = 0;
  while (valor != 0) {
    print("Digite um número");
    String? entrada = stdin.readLineSync();
    valor = (entrada != null && entrada.isNotEmpty) ? int.parse(entrada) : 0;

    soma += valor;
  }

  print("O valor Acumulado é $soma");
}

void diasSemana() {
  print("Digite um númro");
  String? entrada = stdin.readLineSync();

  if (entrada != null && entrada.isNotEmpty) {
    try {
      int numero = int.parse(entrada);

      switch (numero) {
        case 1:
          print("Domingo");
          break;
        case 2:
          print("Segunda");
          break;
        case 3:
          print("Terça");
          break;
        case 4:
          print("Quarta");
          break;
        case 5:
          print("Quinta");
          break;
        case 6:
          print("Sexta");
          break;
        case 7:
          print("Sábado");
          break;
      }
    } catch (e) {
      print("Exceção $e");
    }
  } else {
    print("ERRO! nulo ou vazio.");
  }
}

void lista() {
  List<int> numero = [];

  for (var i = 0; i < 5; i++) {
    numero.add(Random().nextInt(10) + 1);
  }

  print(numero);

  List<int> listaNumero = [];

  for (var i = 0; i < 10; i++) {
    print("Digite um numero");
    String? entradaNumero = stdin.readLineSync();

    if (entradaNumero != null) {
      int numero = int.parse(entradaNumero);
      listaNumero.add(numero);
    }
  }

  print(listaNumero);
  int maior = 0;
  for (int element in listaNumero) {
    if (element > maior) {
      maior = element;
    }
  }

  print("Maior: $maior ");
}

void matriz() {
  List<List<int>> matriz = [];

  for (var i = 0; i < 3; i++) {
    List<int> lista = [];

    for (var j = 0; j < 3; j++) {
      lista.add(Random().nextInt(10) + 1);
    }
    matriz.add(lista);
  }
  print(matriz);
}

int soma([int num1 = 0, int num2 = 0]) {
  return num1 + num2;
}

void parImpa({required int num1}) {
  if (num1 % 2 == 0) {
    print("Par");
  } else {
    print("Impar");
  }
}

String maiuscula(String letra) {
  return letra.toLowerCase();
}
