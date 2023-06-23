import 'brasil.dart';

/**
 * Const
 * Inicializada em tempo de compilação, deve ser declarada com valor constante.
 * Ao nível de classe, deve ser  statica  para ficar disponível  na classe
 * Em coleções const todo o conteúdo dev ser constante
 * 
 * Objeto Imutável ou classe imutável
 * 
 * O construtor deve ser constante
 * As variáveis deve ser final ou static const
 */
void main() {
  const double pi = 3.14;
  //pi = 10.11; não pode ser alterada ou sobreposta
  double raio = 2;
  var resultado = pi * (raio * raio);
  print(resultado);

  final dynamic numeros = [2, 2.5]; // numeros e constate final  não pode ser sobreposta, porém seus elementos podem variar
  numeros.add(17);
  print(numeros);
  //numeros = [];

  final dynamic listaFinal = const [1, 2.3, 3.4];
  //listaFinal.add(12);  Não é possível fazer uma adição ou remoção, pois a lista e constante em quantidade, como também seus elementos devem ser constates
  // listaFinal.remove(1);

  const lista = [1, 2.3];
  // lista.add(11); não é possível adicionar pois a lista e constante

  final j;
  j = 10;
  print(j); // é possível porque e uma constante em tempo de execução
  //const x; // não é possível! Pois é uma constante em tempo de compilação, ou seja  deve ser inicializada no momento em que está sendo escrita ou declarada.
  //x = 10;

  for (var i = 0; i <= 3; i++) {
    final indexFinal = i;
    //const ct = i;
    const constante = 1;
    print("Contagem ${constante + indexFinal}");
  }

  var pais = Brasil(latitude: -15.792371, longitude: -47.882326);
  print('$pais');
  print(pais.infromacao());
  //pais.latitude = 1511; Não é permitido porque a classe é imutável
 // Brasil.capital = ''; 
}
