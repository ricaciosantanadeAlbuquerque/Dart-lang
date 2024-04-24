import 'caracteristicas.dart';
import 'multas.dart';

class Carro{
  String? marca,modelo,placa;// variáveis de mesmo tipo podem ser declaradas na mesma linha separadas por virgula;
  Caracteristicas? caracteristicas;
  List<Multas>? listMultas;

  Carro({required this.marca,required this.modelo,required this.placa,required this.caracteristicas,required this.listMultas});

  @override
  String toString() => 'Marca:$marca, modelo:$modelo, placa:$placa Caracteristicas:$caracteristicas, multas:$listMultas';

}