/**
 * Faça uma classe que simule a ocupação dos quartos de um Hotel. Considere que existe cinco andares e dez quartos por andar. O objetivo é saber se um quarto está ocupado ou não, a classe deve possuir um menu com as opções: 1 imprimir lista de quatros 2 definir ocupação e 3- sair. Apoção 1 lista todos os quartos , informmando se estão  ou não ocupados, a opção 2  permite definir o status  ocupado ou livre para qualquer um dos quartos. A ocpção 3 encerra o programa.  
 */
void main() {
  List<List<String>> hotel = []; // matriz  essa  lista recebe uma outra lista. 0 a 4
  int cont = 0;
  for (var i = 0; i < 5; i++) {
    List<String> quartos = []; // 0 a 9

    for (var j = 0; j < 10; j++) {
      quartos.add("livre");
    }
    cont = quartos.length;

    hotel.add(quartos);
  }
  int cont1 = 0;
  //print(cont);

}
