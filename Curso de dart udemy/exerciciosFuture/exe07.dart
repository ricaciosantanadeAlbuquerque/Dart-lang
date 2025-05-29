class Usuario {
  ///Atributos de instância
  late int id;
  late String nome;
  late int idade;
  late double salario;

  /// construtor padrão
  Usuario({
    required this.id,
    required this.nome,
    required this.idade,
    required this.salario,
  });

  /// sobreposição de método.
  @override
  String toString() => 'ID:$id, Nome:$nome, Idade:$idade, Salario:$salario';
}

Future<void> main() async {
  Usuario lucas = new Usuario(id: 1, nome: 'Lucas', idade: 30, salario: 48000);
  Usuario ana = new Usuario(id: 2, nome: 'Ana', idade: 43, salario: 5500);
  Usuario ricacio = new Usuario(
    id: 3,
    nome: 'Ricacio',
    idade: 33,
    salario: 12500,
  );

  /// caso 1 ===================================================================

  String? resultado1 = await dados(pessoa: lucas, id: 1);
  print(resultado1 ?? 'Dados não encontrados');

  String? resultado2 = await dados(pessoa: ana, id: 3);
  print(resultado2 ?? 'Dados não encontrados');

  String? resultado3 = await dados(pessoa: ricacio, id: 3);
  print(resultado3 ?? 'Dados não encontrados');
  
}

Future<String?> dados({required Usuario pessoa, int id = 0, int tempo = 1}) {
  return Future.delayed(Duration(seconds: tempo), () {
    if (pessoa.id == id) {
      return pessoa.toString();
    } else {
      return null;
    }
  });
}
