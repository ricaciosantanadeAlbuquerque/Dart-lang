import 'intercafe.dart';

abstract class Veiculo implements Interface {
  // sobrepondo atribultos da interface====================
  @override
  String? _velocidade;
  bool? _status;

// métodos  de interface===================================

  @override
  void ligar() {
    this.status = true;
  }

  @override
  void desligado() {
    
    if(status == true){
      this.status = false;
    }
    
  }

  @override
  void mostrarStatus() {
    print("Ligado: ${status}");
  }

  @override
  void acelerar() {
    print("Acelerando !");
  }

// get and set ============================================

  String? get velocidade => this._velocidade;

  void set velocidade(String? velocidade) {
    this._velocidade = velocidade;
  }

  bool? get status => this._status;

  void set status(bool? status) {
    this._status = status;
  }
}
/**
 * Ao implementamos uma classe X,  estamos fazendo uma espécie de contrato com a mesma. Por tanto ! Em Dart, devemos fazer um     * polimorfismo de sobreposição obrigatória, sobrepondo  todos os métodos e atributos  da interface.  
 * 
 * 
 */
