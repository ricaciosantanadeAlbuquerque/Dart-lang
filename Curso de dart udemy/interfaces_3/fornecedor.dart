import 'interface.dart';

class Fornecedor implements Dao {
  // atributos

  String? _cnpj;
  String? _razaoSocial;

  // construtor
  Fornecedor(this._cnpj, this._razaoSocial) {
    this._cnpj = (this._cnpj == null) ? 'indefinido' : _cnpj;
    this._razaoSocial = (_razaoSocial == null) ? 'indefinido' : _razaoSocial;
  }

  // get and set

  String? get cnpj => this._cnpj;

  void set cnpj(String? cnpj) {
    this._cnpj = cnpj;
  }

  String? get razaoSocial => this._razaoSocial;

  void set razaoSocial(String? razaoSocial) {
    this._razaoSocial = razaoSocial;
  }

  // interface Dao
  @override
  void excluir() {
    print("Excluindo produto da base de dados ");
    this.cnpj = null;
    this.razaoSocial = null;
  }

  @override
  void inserir() {
    print("Inserindo produto no app");
  }

  @override
  void localizar() => toString();

  @override
  String toString() => 'CNPJ:$cnpj, RazãoSocial:$razaoSocial';
}
