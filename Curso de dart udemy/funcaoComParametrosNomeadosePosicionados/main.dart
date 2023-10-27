void funcaoParametros() {
  void exibirDados(String? nome, [int? peso = 65, double? altura = 1.68]) {
    // parâmetros posicionados
    print("Nome: $nome, Peso:$peso, Altura: $altura\n");
  }

  /**
   * No caso dos parâmetros posicionados deve se obedecer a ordem dos parâmetros.
   * funções com parâmetros nomeados deve declarados.
   */
  void exibirDados2(String nome, {int? peso = 65, double? altura = 1.80}) {
    print("Nome: $nome, Peso:$peso, Altura: $altura\n");
  }

  String areaCirculo({required int raio}) => 'A área do circulo é ${3.14 * raio * raio}\n';

  String saudacao(String nome, {String Function()? p}) {
    print("Olá eu sou $nome");
    return p!();
  }

  String falar() => 'Essa é uma função passada como parâmetro';

  void texto() => print('fução passada como parâmetro para uma outra função ');

  void saudacao2(String nome, {required Function p}) {
    print("Olá eu sou $nome");

    p();
  }

  exibirDados('Lana');
  print('');
  exibirDados('Lucas', 80, 1.82);
  exibirDados2('ANA');

  exibirDados2('Matheus', peso: 65, altura: 1.74);
  print(areaCirculo(raio: 12));

  print(saudacao('Pedro', p: falar));

  saudacao2('Ana', p: texto);

  saudacao2('Moisés', p: () => print('tudo oks no teste !! '));
}

void main() {
  funcaoParametros();
}
