import 'dart:io';
import 'pessoa.dart';

void main(List<String> args){
  PessoaSingleton pessoa1 = cadastro(); 
  PessoaSingleton pessoa2 = cadastro();

  print('Objeto pessoa1: $pessoa1');
  print('==============');
  print('Objeto pessoa2: $pessoa2');
  
  print('\n');

  visualizarPessoa();
  print('\n');
  detalhasPessoa();
  print('\n');
  alterarDetalhesPessoas();
  print('\n');
  visualizarPessoa();
  

  
  

  /**
   * Vemos que não é possível acessar de forma direta qualquer um dos atribtos  de instância, já que a classe está 
   * encapsulada.
   *
   */

}
//===============================cadastroPessoa===========================================
 PessoaSingleton cadastro(){
  /**
   *  A classe PessoaSingleton{} Possui uma coleção Map() de objetos únicos "Singleton". Por isso cada chave "key" e valor "value",
   * devem ser únicos. todas as vezes que a classe PessoaSingleton for instanciada passando uma chave como argumento para o
   * construtor, deve ser feito uma busca nome Map<>() eeeeeeeee se está chave já existir no Map<> então seu  valor deve ser retornado,
   * assim  não sendo possível sobre escever o valor da chave e sempre retornando a mesma intância.
   */
  var result;
  print('======Bem vindo======');
  print('Digite seu CPF por favor');
  String? entradaCpf = stdin.readLineSync();
  print('Digite seu nome');
  String? entradaNome = stdin.readLineSync();
  print('Digite sua idade');
  String? entradaIdade = stdin.readLineSync();
  print('Informe seu peso atual');
  String? entradaPeso = stdin.readLineSync();
  print('Informe seu salário atual');
  String? entradaSalario = stdin.readLineSync();

  if(entradaCpf != null && entradaNome != null && entradaIdade != null && entradaPeso != null && entradaSalario != null){
    if(entradaCpf.isNotEmpty && entradaNome.isNotEmpty && entradaIdade.isNotEmpty && entradaPeso.isNotEmpty && entradaSalario.isNotEmpty){
        try{

          int idade = int.parse(entradaIdade);
          double peso = double.parse(entradaPeso);
          double salario = double.parse(entradaSalario);
          result = PessoaSingleton(entradaCpf, nome:entradaNome, idade: idade, peso: peso, salario: salario);
        }on FormatException{
         print('Não é possível converter uma letra em  valor númerico');
        }catch(e,s){
         print('Exceção:$e');
         print('Stack Trace: $s');
        }
    }else{
      print('ERRO! valores inválidos');
      exit(0);
    }
  }else{
    print('ERRO! valor nulo passado como argumento.');
    exit(0);
  }
 return result;
}
//===============================visualizarPessoa===========================================
void visualizarPessoa(){
    // função static
  PessoaSingleton.pessoas();
}
//===============================detalhesPessoa===========================================
void detalhasPessoa(){
 print('Digite seu CPF por favor');
 String? entradaCpf = stdin.readLineSync();

 if(entradaCpf != null && entradaCpf.isNotEmpty){
 // função static
 PessoaSingleton.visualizarDetalhesPessoa(KeyCpf: entradaCpf);
 }else{
 print('ERRO! CPF inválido');
  exit(0);
 }
}
//===============================alterarDetalhesPessoas======================================
void alterarDetalhesPessoas(){
print('Bem vindo! Para alterar os dados por favor digite seu CPF');
String? entradaCpf = stdin.readLineSync();

if(entradaCpf != null && entradaCpf.isNotEmpty){
  print('Digite seu nome');
  String? entradaNome = stdin.readLineSync();
  print('Digite sua idade');
  String? entradaIdade = stdin.readLineSync();
  print('Digite seu peso');
  String? entradaPeso = stdin.readLineSync();
  print('Digite seu salário atual');
  String? entradaSalario = stdin.readLineSync();
  try{
   int idade = int.parse(entradaIdade!);
   double peso = double.tryParse(entradaPeso!) ?? 0.0;
   double salario = double.tryParse(entradaSalario!) ?? 0.0;
   // função static
   PessoaSingleton.alterarDetalhesPessoa(keyCpf: entradaCpf, nome: entradaNome!, idade: idade, peso: peso, salario: salario);
  }on FormatException{
   print('Erro de converção de valor !!!');
  }catch(e,s){
   print('Excecao:$e');
   print('Stack Trace:$s');
  }

}else{
 print('ERRO! CPF inválido!');
 exit(0);
}

}