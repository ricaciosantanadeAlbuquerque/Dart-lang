import 'edficio.dart';
import 'mesa.dart';

void main() {
  var mesa = Mesa('CFO', '4m', '8m');

  var edificio = Edificio(metrosAndar: 1000);

  edificio.mostrarTodosAndares();
  print('');
  print('');

  edificio.qtdAndar[0].mostrarSala(); // um Andar tem 4 sala a final um andar geralmente tem 4 aps

  /**
   * edificio é composto por 10 andares, cada andar é dividido em 4 
   */

  // fazendo a agregação  de mesa em sala
  edificio.qtdAndar[0].sala[0].inserirMesa(mesa: mesa);

  print(edificio.qtdAndar[0].sala[0].toString()); // 4 sala por andar

  print('');

  print(edificio.qtdAndar[0].sala[0].mesa.toString());

  // excluindo objetos parte todo
  print('=================================================================================================');
  print('');
  edificio.excluirTodosAndares();

  print('\n');

  print('');
  
  
 
}
