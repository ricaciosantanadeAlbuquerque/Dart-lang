import 'package:exe06/exe06.dart' as exe06;

void main(List<String> arguments) async {
  print('Carrgeando Dados...');
  final result = await exe06.carregarDados();
  assert(result.isNotEmpty);
  print('Resultado: $result');
}
