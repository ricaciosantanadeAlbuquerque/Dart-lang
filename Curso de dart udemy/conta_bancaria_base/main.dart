import 'conta_bancaria.dart';

void main() {
  ContaBancaria contaRicacio =
      ContaBancaria(titular: 'Ricacio Santana'); // linhas de instânciamento

  print('O senhor ${contaRicacio.titular}: ${contaRicacio.depositar(valo: 1758) ? 'valor de 1758R\$ depositado com sucesso !'
      'Saldo atual: ${contaRicacio.saldo}' : 'ERRO! não foi possível fazer o deposito'}');

  print('\n ====================Saque==================== \n');

  print('O senhor ${contaRicacio.titular}: ${contaRicacio.sacar(valor: 500) ? 'Valor de 500R\$ sacado com sucesso'
      'Saldo atual ${contaRicacio.saldo}' : 'ERRO! Não foi possível realizar saque.'}');

  print('\n ====================Saque==================== \n');

  print('O senhor ${contaRicacio.titular}: ${contaRicacio.sacar(valor: 1500) ? 'Valor de 500R\$ sacado com sucesso'
      'Saldo atual ${contaRicacio.saldo}' : 'ERRO! Não foi possível realizar saque.'}');

  print(' \n ========================zero======================');

  print('O senhor ${contaRicacio.titular}: ${contaRicacio.depositar(valo: 0) ? 'valor de 1758R\$ depositado com sucesso !'
      'Saldo atual: ${contaRicacio.saldo}' : 'ERRO! não foi possível fazer o deposito'}');

  print(' \n ======================== -1 ======================');

  print('O senhor ${contaRicacio.titular}: ${contaRicacio.depositar(valo: -1) ? 'valor de 1758R\$ depositado com sucesso !'
      'Saldo atual: ${contaRicacio.saldo}' : 'ERRO! não foi possível fazer o deposito'}');

  print(contaRicacio.saldo);
}
