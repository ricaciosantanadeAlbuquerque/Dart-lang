void funcaoPosicional() {
  print("Função com os paremetros posicionados");

// ========================== Informando dados =============================================
  void dados(String nome, [int? idade, double? altura]) {
    // ? null safety update
    print("$nome $idade $altura");
  }

//
  dados("Ricacio", 28, 1.73);
  dados("Lucas"); // não é  necessário informa todos os dados, porém os parâmetros devem aceitar valores nulos
  dados("ana", 12);
}

void main() {
  funcaoPosicional();
}
