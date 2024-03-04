import 'edificio.dart';
import 'mesa.dart';

void main() {
  var mesa = Mesa(marca: 'HSB', modelo: 'JJ', tamanho: 12);
  var edificil = Edificio();
  print('');

  print(edificil.toString());
  print(edificil.andares[0].toString());

  print('============================================================');

  edificil.andares[0].listSalas[0].inserirMesa(mesa: mesa);

  print(edificil.andares[0].listSalas[0].mesa[0].toString());

  edificil.excluirAndar();

  

}
