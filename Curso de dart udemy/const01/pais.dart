// Criando um objeto inmutável

class Brasil {
  final double latitude;
  final double longitude;
  static const capital = 'Brasilia';
  static const estado = ['Paraíba', 'Recife', 'São Paulo', 'Rio janeiro', 'Amazonas'];

  const Brasil({required this.latitude, required this.longitude});
}
