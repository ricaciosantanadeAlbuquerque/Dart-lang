import 'interface_autenticavel.dart';
/**
 * Crie uma interface Autenticavel com um método autenticar().
Crie uma classe Usuario que implemente essa interface, verificando se a senha está correta
 * 
 */
class Usuario implements InterfaceAutenticavel {
  String _login = 'ricacio123456';
  String _senha = '123456789';

  Usuario();

  bool editarDados({required String login, required String senha}) {
    if (login.isNotEmpty && senha.isNotEmpty) {
      this.login = login;  // sobreposição do valor login
      this.senha = senha;
      return true;
    } else {
      return false;
    }
  }

  @override
  bool autenticar({required String login, required String senha}) {
    if (login.isNotEmpty && senha.isNotEmpty) {
      if (this.login == login && this.senha == senha) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  // get and set

  String get login => this._login;

  void set login(String login) => this._login = login;

  String get senha => this._senha;

  void set senha(String senha) => this._senha = senha;
}
