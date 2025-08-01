bool aprovado({required Map<String, int> map, required String chave}) {
  return map[chave] != null && map[chave]! >= 7;
}
