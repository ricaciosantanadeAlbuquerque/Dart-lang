import 'dart:io';

import 'cadastro.dart';

void main() {
  Cadastro cadastro = new Cadastro();
  String resposta = 'sim';
  do {
    print("Digite [1] para cadastrar Aluno");
    print("Digite [2] para listar Aluno");
    print("Digite [3] para calcular média ");
    print("Digite [4] para visualizar a maior nota de cada aluno.");
    print("Digite [5] para visualizar a menor nota de cada alunos");
    print("Digite [6] para visualiar o  coeficienteTurma da turma");
    String? op = stdin.readLineSync();
    if (op != null) {
      try {
        int opcao = int.parse(op);

        switch (opcao) {
          case 1:
            print("Digite o nome do Aluno !");
            String? entradaNome = stdin.readLineSync();
            print("Idade do aluno !");
            String? entradaIdade = stdin.readLineSync();
            print("Digite a primeira nota !");
            String? entradaNota1 = stdin.readLineSync();
            print("Digite a segunda nota !");
            String? entradaNota2 = stdin.readLineSync();
            print("Digite a terceira nota ");
            String? entradaNota3 = stdin.readLineSync();
            print("Digite a quarta nota !");
            String? entradaNota4 = stdin.readLineSync();
            if (entradaNome != null && entradaNome.isNotEmpty) {
              if (entradaNota1 != null && entradaNota2 != null && entradaNota3 != null && entradaNota4 != null && entradaIdade != null) {
                try {
                  int idade = int.parse(entradaIdade);
                  double nota1 = double.parse(entradaNota1);
                  double nota2 = double.parse(entradaNota2);
                  double nota3 = double.parse(entradaNota3);
                  double nota4 = double.parse(entradaNota4);
                  cadastro.cadastrar(nome: entradaNome, idade: idade, nota1: nota1, nota2: nota2, nota3: nota3, nota4: nota4);
                } catch (e) {
                  throw Exception('ERRO de conversão');
                }
              } else {
                print("Valor nulo ou vazio ");
              }
            } else {
              print("Valor nulo ou vazio");
            }

            break;
          case 2:
            cadastro.listarAlunos();
            break;
          case 3:
            cadastro.calcularMedia();
            break;
          case 4:
            cadastro.maiorNota();
            break;
          case 5:
            cadastro.menorNota();
            break;
          case 6:
            cadastro.coeficienteTurma();
            break;
          default:
            print("Valor fora da faixa !");
            break;
        }
      } catch (e) {
        throw Exception("ERRO não é possível converte $op em um número ");
      }
    } else {
      print("ERRO! o programa será encerrado você deve escolher um valor !!!");
      exit(0);
    }
    print(" Deseja continuar digite [sim] ou digite [nao] para sair ");
    String? entradaOp = stdin.readLineSync();
    resposta = (entradaOp != null)
        ? (entradaOp.isNotEmpty)
            ? entradaOp
            : 'nao'
        : 'nao';
  } while (resposta == 'sim');
}
