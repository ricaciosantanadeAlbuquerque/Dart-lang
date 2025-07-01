
/**
 *  Stream de lista com Stream.fromIterable
Emita ['Ana', 'Bruno', 'Carlos'] um por vez.
 */
void main() {
  final Stream<dynamic> stream = Stream.fromIterable([
    'Ricacio',
    'Lucas',
    'Dora',
  ]);

  stream.listen((listNome) {
    print(listNome);
  }, onDone: () => print('stream finalizada.'));

 /// testando co conceito do late
  late String nome;

  nome = 'jj';

  print(nome);
}
