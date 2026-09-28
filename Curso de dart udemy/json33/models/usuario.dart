class ListUsuario {
  final List<Usuario> usuarios;

  ListUsuario({required this.usuarios});

  factory ListUsuario.fromJson({required List<dynamic> lista}) {
    return ListUsuario(
      usuarios: lista.map((e) => Usuario.fromJson(map: e)).toList(),
    );
  }

  List<dynamic> toJson() => usuarios;
}

class Usuario {
  final String nome;
  final int idade;
  final String email;

  Usuario({required this.nome, required this.idade, required this.email});

  factory Usuario.fromJson({required Map<String, dynamic> map}) {
    return Usuario(nome: map['nome'], idade: map['idade'], email: map['email']);
  }

  Map<String, dynamic> toJson() {
    return {'nome': nome, 'idade': idade, 'email': email};
  }

  @override
  String toString() => 'nome:$nome, idade:$idade, email:$email';
}
