// classe imutável
class Brasil {
  final double longitude;
  final double latitude;
  static const String capital = 'Brasilia';
  static const List<String> pais = ['PB', 'RJ', 'RN', 'SP'];
 // atribultos 'const' devem ser obrigatoriamente  static. 
  const Brasil({required this.latitude, required this.longitude});
}
