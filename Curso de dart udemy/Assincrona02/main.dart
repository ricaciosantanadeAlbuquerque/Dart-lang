

import 'usuario.dart';

void main()async{
  for(var i = 0; i < 10;i++){
    print(i);
  }
  print(await resposta(tempo:1));

  var usuario = await criarUsuario(tempo:10 , login: 'adimin', senha: 'adimin', nome: 'ricacio', idade: 30, altura: 1.72, sexo: 'Masculino', 
  salario: 1753); // chamada a função async  

  print(usuario.toString());

}


Future<String>? resposta({int tempo = 1}){
  try{
    if(tempo < 5) throw Exception('ERRO!! tempo abixo do esperado');
    return Future.delayed(Duration(seconds: tempo), () => 'O tempo total de processamento foi $tempo segundos');
  }catch(e){
  print('$e');
  return null;
  }finally{
    print('FIM ! programa');
  }
}

// objeto Future<Usuario>
Future<Usuario> criarUsuario({required int tempo,required String login,required String senha,required String nome,
required int idade,required double altura,required String sexo,required double salario}){
  return Future.delayed(Duration(seconds: tempo),() => Usuario(login: login, senha: senha, nome: nome, idade: idade, altura:altura, sexo: sexo, salario: salario));
}

/**
 * A função  Cria um objeto  Future<Usuario>
 * função async
 */

