import 'conta_bancaria.dart';
class ContaCorrente extends ContaBancaria {

  // construtor default ou contrutor padrão
  ContaCorrente({required String titular}) : super(titular: titular);

  @override
  bool sacar({required double valor}) {
    double porCent = (valor * 2) / 100;
    valor -= porCent;
    return super.sacar(valor: valor);
  }
}
