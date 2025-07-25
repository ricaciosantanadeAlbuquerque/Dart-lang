class Animal {
  final String tipo;
  final String som;

  const Animal({required this.tipo, required this.som});

  String falar() => som.toString();
}
