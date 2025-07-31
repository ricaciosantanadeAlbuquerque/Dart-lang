/**
 * List<int> dobrarValores(List<int> numeros)
Crie testes que:

Verifiquem se os valores dobrados estão corretos

Verifiquem que a saída é do tipo List<int>

Use expect(..., allOf([isA<List<int>>(), equals([...])]))
 */

List<int> dobrarValores(List<int> lista) =>
    lista.map((value) => value * 2).toList();
