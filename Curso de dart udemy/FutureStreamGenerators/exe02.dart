
/**
 * ✅ Retorno instantâneo com Future.value
Retorne imediatamente o valor 42.
 */
Future<void> main(List<String> args)async{
  ///  retornar um valor imediatamente em uma Future
  print('''
   Valor:
   ${ await Future.value(42)} 
   (:
''');

 /**
  * Esta Future já nasce com valo predefinido.
  */
}
