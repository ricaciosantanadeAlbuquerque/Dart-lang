import 'pessoa.dart';

class Usuario extends Pessoa{
  final String login;
  final String senha;


factory Usuario({required String login, required String senha, required String nome,required int idade, required double altura, required String sexo, required double salario}){
  if(login == 'adimin' && senha == 'adimin'){
    return Usuario.adimin(login: login, senha: senha, nome: nome, idade: idade, altura: altura, sexo: sexo, salario: salario);
  }else{
    return Usuario.comum(login: login, senha: senha, nome: nome, idade: idade, altura: altura, sexo: sexo, salario: salario);
  }
}

  Usuario.comum({required this.login,required this.senha,required String nome,
  required int idade, required double altura,required String sexo,required double salario})
  : super(nome: nome,altura: altura,idade: idade,salario: salario,sexo: sexo,){
    print('Conta Criada com usuário Comum');
  }


  Usuario.adimin({required this.login,required this.senha,required String nome,required int idade,required double altura,
  required String sexo,required double salario}) : super(nome: nome,altura: altura,idade: idade,salario: salario,sexo: sexo){
    print('conta criada com Usuário Adimin');
  }
  @override
  String toString() => 'Login:$login, Senha:$senha ${super.toString()}';
}