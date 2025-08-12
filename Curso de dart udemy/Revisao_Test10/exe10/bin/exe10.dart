import 'dart:developer';

import 'package:exe10/exe10.dart' as calculos;

void main(List<String> arguments) {
  log('Soma: ${calculos.soma(n1: 20, n2: 20)}');
  log('Subtração: ${calculos.subtracao(20, 5)}');
  log('Multiplicação ${calculos.multiplicacao(n1: 3, n2: 3)}');
}

/**
 * (as) cria um apelido ou prefixo para o arquivo, então a apelido,
 * torna-se o arquivo em questão. Tudo que o arquivo tem o prefixo tem, e
 * está acessivel  pelo nome do prefixo mais o operador de acesso ponto. 
 */