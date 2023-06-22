/**
 * Final 
 * Inicializada apenas quando acessada em tempo de execução, deve ser declarada!
 * Em coleções final nem todo o conteúdo será final;
 */
void main() {
  final gravidade = 9.8;
  //gravidade = 10; não podemos alterar ou sobrepor varianies final.
  int tempo = 5;
  double velocidade = gravidade * tempo;
  print(velocidade);

  for (int i = 1; i <= 3; i++) {
    final index = i;
    print(index);
  }

  Pessoa pessoa = new Pessoa(nome: 'ricacio', familiares: ['Ana', 'Lucas', 'Carmem']);
  print("Nome:${pessoa.nome}, Família: ${pessoa.familiares}");
  pessoa.nome = 'João';
  // pessoa.familiares = ['', '', '']; familiares é um atribulto final, sendo assim não é possível sobrepor ou alterar este atribulto
}

class Pessoa {
  String nome;
  final dynamic familiares;

  Pessoa({required this.nome, required this.familiares});
}
