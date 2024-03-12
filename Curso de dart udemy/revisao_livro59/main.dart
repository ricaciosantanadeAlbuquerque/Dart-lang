import 'edificio.dart';
import 'mesa.dart';

void main() {
  Edificio edificio = Edificio(metrosQuadradosAndar: 1000);
  edificio.listarAndar();

  print('');

  edificio.listAndar[0].listarSalas();

  print('');
  print('');

  Mesa mesa = Mesa(modelo: 'POP', tamanho: '2 metros');

  edificio.listAndar[0].listSala[0].adicionarMesa(mesa: mesa);

  print(edificio.listAndar[0].listSala[0].listMesa[0].toString());

  edificio.excluirAndar();
  print('');

 //
 // print(edificio.listAndar[0].listSala[0].listMesa[0].toString());
}
