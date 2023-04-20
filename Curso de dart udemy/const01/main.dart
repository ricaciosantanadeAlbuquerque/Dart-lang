import '../const/Brasil.dart';

void main() {
  var brasil = Brasil(-7.11532, -34.8617);
  print("Latitude: ${brasil.latitude}"); // atribulto de instância;
  print("Longitude:${brasil.longitude}");
  print("Capital: ${Brasil.capital}"); // atribulto de classe;
  print("Estado: ${Brasil.estado}");
}
