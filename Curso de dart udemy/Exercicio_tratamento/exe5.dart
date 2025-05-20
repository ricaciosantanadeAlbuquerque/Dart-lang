/**
 * .  5 Trabalhando com booleanos e assert
Crie uma função verificarIdade(int idade) que:

Retorna true se a idade for maior ou igual a 18

Caso contrário, use assert para garantir que a idade seja válida com a mensagem "Idade inválida para acesso"
 */

bool verificarIdade(int idade) {
  assert(idade >= 18,
      'Idade inválida para acesso'); // se a condição for false ele para nesta linha 12

  return true;
}

void main() {
  var idadeUsuario = 20;

  try {
    var result = verificarIdade(idadeUsuario);
    print('Acesso permitido: $result');
  } catch (e, s) {
    print(e);
    print(s);
  }
}
