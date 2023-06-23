class Brasil {
  final double longitude;
  final double latitude;
  static const String capital = "Brasilia";
  static const List<String> estados = ['SP', 'Rj', 'MG', '...'];

   const Brasil({required this.latitude, required this.longitude});
  
  
  String infromacao(){
    return 'Longitude:$longitude, Latitude:$latitude, Capital:$capital, Estado:$estados';
  }
}
