void main()async{
  for(var i = 0; i < 10;i++){
    print(i);
  }
  print(await resposta(tempo:1));

}


Future<String>? resposta({int tempo = 1}){
  try{
    if(tempo < 5) throw Exception('ERRO!! tempo abixo do esperado');
    return Future.delayed(Duration(seconds: tempo), () => 'O tempo total de processamento foi $tempo segundos');
  }catch(e){
  print('$e');
  return null;
  }finally{
    print('FIM ! programa');
  }
}