import 'carro.dart';
import 'motorista.dart';
import 'radioCarro.dart';

void main() {
  final radio = Radiocarro(tocando: true, marca: 'Sony'); // parte agregada

  final motorista = Motorista(id: 123, nome: 'Ana', idade: 26, sexo: 'feminina');

  final carro = Carro(motorista: motorista, fabricante: 'BMW', motorFabri: 'General Motors', numeroId: 667, power: 2.3);

  carro.motorista.dirigir(); // o objeto "carro" tem um objeto motorista, por isso ele pode enchergar seus atibutos e métodos.
  print('');

  for (var peneuu in carro.peneu) { // Na composição só o objeto carro pode acessar suas partes "objeto motor ou objeto peneu",
    print("Fabricante ${peneuu.fabrica} Numero identificação ${peneuu.numeroId}");
  }

  print('');

  carro.addRadio(radio); // relação de agregação; Onde o bjeto rádio pode ser passado  depois  que carro é criado, eeee  também é enchergado fora de carro, assim como existe por sí só.

  carro.radio!.tocar();
}

/**
 * Na composição só o objeto TODO (carro) pode enchergar os objetos partes(mortor peneu), caso o TODO (carro) seja deletado,
 * as partes também são deletadas,
 */