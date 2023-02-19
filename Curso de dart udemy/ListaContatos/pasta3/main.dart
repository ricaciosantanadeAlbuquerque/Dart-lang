import 'dart:io';


import '../pasta2/Home_Controller.dart';
import 'Home_pessoa.dart';

void main() {
    HomeController controle = new HomeController();
  String resposta = "sim";
  while (resposta == "sim") {
    print("Digite seu nome por favor !");
    String? entradaNome = stdin.readLineSync();

    print("Digite o seu endereço!");
    String? entradaEndereco = stdin.readLineSync();

    print("Digite sua idade ");
    String? entradaIdade = stdin.readLineSync();

    print("Digite seu telefo por favor!");
    String? entradaTelefone = stdin.readLineSync();

    print("Digite seu sexo ");
    String? entradaSexo = stdin.readLineSync();

    print("Digite seu nível de escolaridade ");
    String? escolaridadeEntrada = stdin.readLineSync();

    if (entradaNome != null && entradaIdade != null && entradaSexo != null && entradaTelefone != null && entradaEndereco != null && escolaridadeEntrada != null) {
      int idade = int.parse(entradaIdade);
      int telefone = int.parse(entradaTelefone);
      HomePessoa pessoa1 = new HomePessoa.dados(nome: entradaNome, endereco: entradaEndereco, idade: idade, telefone: telefone, sexo: entradaSexo, nivelScolaridade: escolaridadeEntrada);
    
      controle.adicionar(pessoa1);
    }

    print("Deseja continuar digite [sim] se não digite [nao] ");
    String? entrada = stdin.readLineSync();
    resposta = (entrada != null) ? entrada : exit(0); // exit(0) fim programa;
  }

  controle.listar();
}
