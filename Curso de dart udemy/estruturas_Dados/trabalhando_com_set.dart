import 'dart:math';
import 'dart:collection';

/**
 * 3️⃣ Trabalhando com Set
Crie um Set<int> com 10 números aleatórios.

Adicione mais 3 números ao conjunto.

Tente adicionar um número já existente e observe o que acontece.

Exiba os elementos do Set ordenados.
 */

void main() {
  Random random = Random();
  Set<int> set = Set();
  set.add(6);
  for (var i = 0; i < 10; i++) {
    set.add(random.nextInt(10) + 1);
  }

  set.forEach(print);

  /// Adicionando mais 3
  for (var j = 0; j < 3; j++) {
    set.add(j);
  }

  /// tentando adicionar um numero que já existe
  set.add(2); // não aceita valores duplicados

  /// Exiba os elementos do Set ordenados.
  SplayTreeSet<int> splayTreeSet = SplayTreeSet<int>();
  splayTreeSet.addAll(set);

  var novoSet = splayTreeSet.toSet(); // convertendo devolta para Set()

  print(novoSet);
}
