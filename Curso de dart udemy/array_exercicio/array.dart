import "dart:io";

void main() {
  // Faça um exercício para corrigir provas
  // arrays são listas dinâmicas de valores crescentes e ordenados

  List<String> gabarito = []; // array gabarito guarada as quetões certas
  List<String> nomeAluno = []; // guarda os nomes dos alunos
  List<String> questao = []; // questoes marcadas pelos alunos
  List<num> notas = []; // guarda as medias dos três alunos
  double nota = 0; // Acumula as notas
  print("PASSO 1: - CADASTRO DE GABARITO");
  print("======================================================================================================================");
  // cadastrando um gabarito =====================================================================================================

  print("Questão 1:");
  String? questao1 = stdin.readLineSync();
  print("Questão 2:");
  String? questao2 = stdin.readLineSync();
  print("Quest 3:");
  String? questao3 = stdin.readLineSync();
  print("Questao 4:");
  String? questao4 = stdin.readLineSync();
  print("Questao 5:");
  String? questao5 = stdin.readLineSync();

// adiconando os valores no gabarito =============================================================================================
  if (questao1 != null && questao2 != null && questao3 != null && questao4 != null && questao5 != null) {
    if (questao1.isEmpty && questao2.isEmpty && questao3.isEmpty && questao4.isEmpty && questao5.isEmpty) {
      print("ERRO! por favor digite letras ou cararcteres válidos ");
      exit(0);
    } else {
      gabarito.add(questao1);
      gabarito.add(questao2);
      gabarito.add(questao3);
      gabarito.add(questao4);
      gabarito.add(questao5);
      print(gabarito);
    }
  } else {
    print("Erro! por favor preencha todos os campos ");
    exit(0);
  }

  for (int i = 0; i < 3; i++) {
    // loop mais externo
    // vai de 0 a 2 totalizando 3
    print("--------------------------------------------------");
    print("Nome do aluno: ");
    print("---------------------------------------------------");
    String? nome = stdin.readLineSync();
    if (nome != null) {
      nomeAluno.add(nome);
    }
    print("Questão 1: ");
    String? opcao1 = stdin.readLineSync();
    print("Questão 2: ");
    String? opcao2 = stdin.readLineSync();
    print("Questão 3: ");
    String? opcao3 = stdin.readLineSync();
    print("Questão 4: ");
    String? opcao4 = stdin.readLineSync();
    print("Questão 5: ");
    String? opcao5 = stdin.readLineSync();
    if (opcao1 != null && opcao2 != null && opcao3 != null && opcao4 != null && opcao5 != null) {
      // se verdadeiro
      questao.add(opcao1);
      questao.add(opcao2);
      questao.add(opcao3);
      questao.add(opcao4);
      questao.add(opcao5);
    }
    for (int j = 0; j < gabarito.length; j++) {
      if (gabarito[j] == questao[j]) {
        nota += 2;
      }
    }
    // notas[i] = nota; atribuição direta não da certo neste caso específico
    notas.add(nota);
    print("$nota");
    nota = 0;
    questao.clear();
  }
  double somaTotal = 0; // declaramos e inicalizamos com 0
  double mediaSala = 0;
  print(" NOTAS FINAIS");
  print("---------------------------------------------------------------------------------------------------------------");

  for (var j = 0; j < notas.length; j++) {
    print("${nomeAluno[j]} possui a média ${notas[j]}");
    somaTotal += notas[j]; // acumulando a media dos 3 alunos
  }
  mediaSala = somaTotal / notas.length;
  print("--------------------------------------------------------------------------------------------------------------");
  print("Media da truma é  ${mediaSala.toStringAsFixed(2)}");// a função toStringAsFixed() mostra a quantidade de valores após a virgula a quantidade de casas que se quer mostrar é passada como parâmetro para funcao.
}
