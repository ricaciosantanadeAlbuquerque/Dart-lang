import 'dart:collection';
import 'dart:io';
void main(){
Queue<String> nomeQueue = Queue();
Queue<int> idadeQueue = Queue();
Queue<double> salarioQueue = Queue(); 


 print('Digite a quantidade  que você deseja cadastrar');
 String? entradaQTD = stdin.readLineSync();
if(entradaQTD != null && entradaQTD.isNotEmpty){
  try{
    int qtd = int.parse(entradaQTD);
    for( var i = 0; i < qtd; i++){
        print('Digite seu nome. ');
        String? entradaNome = stdin.readLineSync();
        print('Digite sua idade. ');
        String? entradaIdade = stdin.readLineSync();
        print('Digite seu salário');
        String? entradaSalario = stdin.readLineSync();

        // tratamento

        if (entradaNome != null && entradaIdade != null && entradaSalario != null && entradaQTD != null) {
          if (entradaNome.isNotEmpty && entradaIdade.isNotEmpty && entradaSalario.isNotEmpty && entradaQTD.isNotEmpty) {
            try {
              int num1 = int.parse(entradaIdade);
              double num2 = double.parse(entradaSalario);

              queue(nome: entradaNome, idade: num1, salario: num2,nomeQueue: nomeQueue,idadeQueue: idadeQueue,salarioQueue: salarioQueue); 

            } catch (e) {
              throw Exception('ERRO! $entradaIdade  ou $entradaSalario não é um valor númerico');
            }
          } else {
            print('ERRO! campos ou capo vazio!! o programa será encerrado');
            exit(0);
          }
        } else {
          print('ERRO! campos ou compo nulo !! o programa será encerrado');
          exit(0);
        }
    }
   exibicao(nomeQueue: nomeQueue, idadeQueue: idadeQueue, salarioQueue: salarioQueue);
  }catch(e){
    throw Exception('ERRO! $entradaQTD não é um valor numérico');
  }
}else{
  print('ERRO! valor não existem ou válido.');
  exit(0);
}
}

// Queue é uma coleção dinâmica de elementos ordenados entre chaves {} que não tem acesso por index [] e manipula o início e fim da coleção
 void queue({required String nome,required int idade,required double salario,required Queue<String> nomeQueue,required Queue<int> idadeQueue,required Queue<double> salarioQueue}){
 nomeQueue.add(nome);
 idadeQueue.add(idade);
 salarioQueue.add(salario);
 print('');
}

void exibicao({required Queue<String> nomeQueue,required Queue<int> idadeQueue,required Queue<double> salarioQueue}){
  print('');
  for (var i = 0; i < nomeQueue.length; i++) {
    print('Nome:${nomeQueue.elementAt(i)}, Idade:${idadeQueue.elementAt(i)}, salário:${salarioQueue.elementAt(i)}');
  }
}
 