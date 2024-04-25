import 'caracteristicas.dart';
import 'multas.dart';

class Carro{
  String? marca,modelo,placa;
  Caracteristicas? caracteristicas;
  List<Multas>? listMultas;

  Carro({required this.marca,required this.modelo,required this.placa,required this.caracteristicas,required this.listMultas});

  @override
  String toString() => 'Marca:$marca, Modelo:$modelo, Placa:$placa, caracteristicas:$caracteristicas, multas:$listMultas';
}