class Garrafa {
  // atribultos
  String? _tipoMaterial;
  int _capacidade = 0;
  bool? _tampada;
  String? _conteudo;
  int _carga = 0;
  // construtores
  Garrafa({
    required String tipoMaterial,
    required int capacidade,
    required String conteudo,
  }) {
    this._tipoMaterial = tipoMaterial;
    this._capacidade = capacidade;
    this._conteudo = conteudo;
  }

  Garrafa.fabrica({required String tipoMaterial, required int capacidade}) {
    this._tampada = true;
    this._capacidade = capacidade;
    this._tipoMaterial = tipoMaterial;
    this._conteudo = 'agua';
  }

// get ande set

  String? get tipoMaterial => (this._tipoMaterial != null) ? this._tipoMaterial : 'Está vazio o valor não foi passado';

  void set tipoMaterial(String? tipoMaterial) {
    this._tipoMaterial = (tipoMaterial != null) ? tipoMaterial : 'Está vazio o valor não foi passado';
  }

  int get capacidade => this._capacidade;

  void set capacidade(int capacidade) {
    this._capacidade = capacidade;
  }

  bool? get tampada => this._tampada;

  void set tampada(bool? tampada) {
    this._tampada = tampada;
  }

//  métodos

  void encher() {
    if (tampada == true) {
      print("Não pode encher a garrafa porque está tampada !");
    } else {
      this._carga = this._carga + 10;
      print("A garrafa tem ${this._carga}%  de carga");
    }
  }

  void esvaziar() {
    if (tampada == true) {
      print("Não pode esvaziar por que a garrafa está tampada !");
    } else {
      this._carga -= 10;
      print("A garrafa tem ${this._carga}%  de carga a menos ");
    }
  }

  // get personalizado

  String? get mostraConteundo => (this._conteudo != null) ? this._conteudo : 'O valor não  foi passado ';

  void set trocarConteundo(String? conteudo) {
    this._conteudo = (conteudo != null) ? conteudo : 'O valor não  foi passado ';
  }

  @override
  String toString() {
    return 'Tipo: ${this._tipoMaterial},\n Capacidade: ${this._capacidade} Litros \n ,Tampada: ${this._tampada ?? 'Valor não foi passado'},\n Conteudo: ${this._conteudo},\n Carga: ${this._carga} %';
  }
}
