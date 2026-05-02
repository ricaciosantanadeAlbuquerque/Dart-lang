import 'dart:convert';

void main() {
  String jsonData = '''
      {
  "usuarios": [
    {
      "nome": "João",
      "posts": [
        {
          "conteudo": "Olá mundo",
          "likes": 10,
          "comentarios": [
            {"usuario": "Ana", "mensagem": "Legal!"}
          ]
        }
      ]
    }
  ]
}
''';

  //? DECODE
  Map<String, dynamic> parsedJson = jsonDecode(jsonData);

  UsuarioList usuarioList = UsuarioList.fromJson(map: parsedJson);

  usuarioList.usuarios.forEach((e) {
    print('usuario: ${e.nome}, totalLike: ${e.posts[0].likes}');
  });

  Comentarios comentarios = new Comentarios.fromJson(
    map: {'usuario': 'ricacio', 'mensagem': 'Vamos nessa'},
  );

  usuarioList.usuarios
      .elementAt(0)
      .posts
      .elementAt(0)
      .comentarios
      .add(comentarios);

  usuarioList.usuarios[0].posts[0].comentarios.forEach((e) {
    print('Comentário: ${comentarios.usuario}, ${comentarios.mensagem}');
  });

  Map<String, dynamic> map = usuarioList.toJson();
  String toJson = jsonEncode(map);
  print('toJson: $toJson');
}

class UsuarioList {
  List<Usuario> usuarios;

  UsuarioList({required this.usuarios});

  factory UsuarioList.fromJson({required Map<String, dynamic> map}) {
    return UsuarioList(
      usuarios: (map['usuarios'] as List<dynamic>)
          .map((e) => Usuario.fromJson(map: e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
    'usuarios': usuarios.map((e) => e.toJson()).toList(),
  };
}

class Usuario {
  String nome;
  List<Posts> posts;

  Usuario({required this.nome, required this.posts});

  factory Usuario.fromJson({required Map<String, dynamic> map}) {
    return Usuario(
      nome: map['nome'],
      posts: (map['posts'] as List<dynamic>)
          .map((e) => Posts.fromJson(map: e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {'nome': nome, 'posts': posts.map((e) => e.toJson()).toList()};
  }
}

class Posts {
  String conteudo;
  int likes;
  List<Comentarios> comentarios;

  Posts({
    required this.conteudo,
    required this.likes,
    required this.comentarios,
  });

  factory Posts.fromJson({required Map<String, dynamic> map}) {
    return Posts(
      conteudo: map['conteudo'],
      likes: map['likes'],
      comentarios: (map['comentarios'] as List<dynamic>)
          .map((e) => Comentarios.fromJson(map: e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'conteudo': conteudo,
      'likes': likes,
      'comentarios': comentarios.map((e) => e.toJson()).toList(),
    };
  }
}

class Comentarios {
  String usuario;
  String mensagem;

  Comentarios({required this.usuario, required this.mensagem});

  factory Comentarios.fromJson({required Map<String, dynamic> map}) {
    return Comentarios(usuario: map['usuario'], mensagem: map['mensagem']);
  }

  Map<String, dynamic> toJson() {
    return {'usuario': usuario, 'mensagem': mensagem};
  }
}
