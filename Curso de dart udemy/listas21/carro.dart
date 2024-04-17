import 'caracteristica.dart';
import 'multa.dart';

class Carro{
 String? marca,modelo,placa;
 Caracteristicas? caracteristica;
 List<Multa>? multas;

 Carro({required this.marca,required this.modelo,required this.placa,required this.caracteristica,required this.multas});

 @override
 String toString() => 'Marca:$marca, Modelo:$modelo, placa:$placa, caracteristica:$caracteristica, multas:$multas';
}