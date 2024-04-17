import 'caracteristica.dart';
import 'multa.dart';

class Carro{
  String? marca,modelo,placa;
  Caracteristica? caracteristica;
  List<Multa>? listMultas;

  Carro({required this.marca,required this.modelo,required this.placa,required this.caracteristica,required this.listMultas});

  @override
  String toString() => 'Marca:$marca, Modelo:$modelo, placa:$placa, caracteristicas:$caracteristica, multas:$listMultas';
}