import 'dart:developer';

///1️⃣ Verificação de idade mínima para cadastro
///Crie uma função cadastrarUsuario(String nome, int idade)
///que use assert() para garantir que a idade seja maior ou igual a 18.

void cadastrarUsuario({String nome = 'indefinido', int idade = 0}) {
  assert(idade >= 18, 'A idade deve ser no mínimo 18 anos para se cadastrar.');
  log('Usuário: $nome cadastrado com sucesso, Idade $idade ');
}

void main() {
  cadastrarUsuario(nome: 'ricacio', idade: 28);
  //cadastrarUsuario(nome: 'Lucas', idade: 17); ERRO !!! a idade deve ser no minimo 18
  // garantida pela função assert()

  cadastrarUsuario(nome: 'Ana', idade: 18);
}


// assert() só executa no modo debug