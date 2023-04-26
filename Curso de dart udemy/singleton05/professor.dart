class Professor {
  static final Professor _instance = Professor._professorUniversitario();
  String? nome;
  double? salario;
// static == pentence a classe
// final  == constante em  tempo de execução
// _   == atribulto privado, não é visivel fora da classe.
  Professor._professorUniversitario();

  static Professor get instancia {
    return _instance;
  }
}
