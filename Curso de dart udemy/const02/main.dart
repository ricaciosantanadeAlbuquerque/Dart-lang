import 'numeros.dart';

void main() {
  var vetor = [1, 2, 3, 4, 5];
  Numero numero = Numero(lista: vetor);
  numero.localizarMaiorNumero();
  numero.localizarMenorNumero();
  numero.calcularMedia();

// numero.lista = [1,2,3,4,5,6,7,8,9,]; \ NAO É POSSÍVEL ALTERAR O VALOR DO ATRIBULTO POIS ESTA CLASSE É INMUTÁVEL
}
