/**
 * 
1. Criar e usar Future simples
Escreva um programa que:

Crie uma função chamada carregarDados que simula o carregamento de dados após 3 segundos.
Use o then() para exibir uma mensagem quando os dados forem carregados.
 */
void main() {
  carregarDados().then((onValue) {
    print(onValue);
  });
}

Future<String> carregarDados() =>
    Future.delayed(Duration(seconds: 3), () => 'Dados retornados !');
