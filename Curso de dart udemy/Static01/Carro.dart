class Carro {
  // atribultos ======
  String? _cor;
  static double motor = 1.0; // padrão
  String? _fabricante;
  // construtor padrão =========
  Carro({required String cor, required String fabricante, required double motor}) {
    this._cor = (cor != null) ? cor : 'Valor não informado!';
    this._fabricante = (fabricante != null) ? fabricante : 'Não informado ! ';
    Carro.motor = (motor != null) ? motor : 0.0;
  }
  // construtor nomeado ============
  Carro.potente({required String cor, required String fabricante, required double motor}) {
    Carro.motor = (motor != null) ? motor : 0.0;
    // para acessar atribultos e métodos static use o nome da classe ! o this é uma instância da classe
    this._cor = (cor != null) ? cor : 'Valor não informado!';
    this._fabricante = (fabricante != null) ? fabricante : 'Não informado! ';
  }

  // get and set

  String get getCor => this._cor ?? 'valor não existe';

  void set setCor(String cor) => this._cor = (cor != null) ? cor : this._cor;

  String get getFabricante => this._fabricante ?? 'valor não existe';

  void set setFabricante(String fabricante) => this._fabricante = (fabricante != null) ? fabricante : this._fabricante;

  // método ========================

  static double potencia(double motor) {
    return Carro.motor = (motor != null) ? motor : Carro.motor;
  }

  // Dentro de métodos static use variáveis ou atribultos static

  String toString() {
    return "Cor: $_cor, Fabricante: $_fabricante, Motor: $motor";
  }
}
