/**
 * Execução com Future.microtask()
Mostre que Future.microtask roda antes de Future.delayed.
 */
void main() async {
  /// primeiro agendamento
  delayed().then((value) {
    print(value);
  });


  final result = await microtask();
  print(result);


  /**
   * Mesmo o Future.delayed() sendo agendado primeiro, ele foi executado
   * por ultimo.
   *  Isso acontece porque Future.microtask() , tem maior prioridade.
   */
}

Future<String> microtask() => Future.microtask(() {
  return 'Primeiro';
});

Future<String> delayed() =>
    Future.delayed(Duration(seconds: 1), () => 'Segundo');
