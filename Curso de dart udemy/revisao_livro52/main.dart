import 'edificil.dart';
import 'mesa.dart';

void main() {
  var predio = Edificil();

  // print(predio.andares[0].toString());
  // mostrando os andares do prédio
  predio.listarAndares();

  print('\n');
  print('\n');

  print(predio.toString());

  predio.andares[0].mostraSalas();
  print('');

  print(predio.andares[0].toString());
  //====================================== MESA ==============================================
  var mesa = Mesa(numeroMesa: 1, fabricante: 'vitar');

  print('');

  print(predio.andares[0].listSala[0].toString());

  predio.andares[0].listSala[0].adicionarMesa(mesa: mesa); // agregação

  print(predio.andares[0].listSala[0].mesa[0].toString());

  print('======================Excluindo tudo ===============');

  predio.excluirAndares();

  predio.listarAndares();
  //predio.andares[0].listSala[0].mesa[0].toString();
}
