import 'dart:convert';

void main() {
  final String jsonData = '''
    {
  "biblioteca": "Central",
  "livros": [
    {
      "titulo": "Clean Code",
      "autor": "Robert Martin",
      "paginas": 425,
      "emprestado": true
    },
    {
      "titulo": "Flutter na Prática",
      "autor": "Ricardo",
      "paginas": 300,
      "emprestado": false
    }
  ]
}
''';
  //? DECODE

  Map<String, dynamic> parsedJson = jsonDecode(jsonData);

  Biblioteca biblioteca = Biblioteca.fromJson(map: parsedJson);

  List<Livro> emprestimo = biblioteca.livros
      .where((e) => e.emprestado == true)
      .toList();
  var cont = 0;
  for (var i = 0; i < emprestimo.length; i++) {
    print('${cont + 1}: ${emprestimo[i].titulo}, ${emprestimo[0].autor}');
  }

  Livro livro = Livro.fromJson(
    map: {
      'titulo': 'Dart',
      'autor': 'ricacio',
      'paginas': 200,
      'emprestado': true,
    },
  );

  biblioteca.livros.add(livro);

  //? ENCODE

  Map<String, dynamic> map = biblioteca.toJson();
  String toJson = jsonEncode(map);

  print('tojson: ${toJson}');
}

class Biblioteca {
  String biblioteca;
  List<Livro> livros;

  Biblioteca({required this.biblioteca, required this.livros});

  factory Biblioteca.fromJson({required Map<String, dynamic> map}) {
    return Biblioteca(
      biblioteca: map['biblioteca'],
      livros: (map['livros'] as List<dynamic>)
          .map((e) => Livro.fromJson(map: e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'biblioteca': biblioteca,
      'livros': livros.map((e) => e.toJson()).toList(),
    };
  }
}

class Livro {
  String titulo;
  String autor;
  int paginas;
  bool emprestado;

  Livro({
    required this.titulo,
    required this.autor,
    required this.paginas,
    required this.emprestado,
  });

  factory Livro.fromJson({required Map<String, dynamic> map}) {
    return Livro(
      titulo: map['titulo'],
      autor: map['autor'],
      paginas: map['paginas'],
      emprestado: map['emprestado'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'titulo': titulo,
      'autor': autor,
      'paginas': paginas,
      'emprestado': emprestado,
    };
  }
}
