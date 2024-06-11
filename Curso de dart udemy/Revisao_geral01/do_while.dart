void main(){
  // Assim como o while o do{}while() executa um número inserto de repetições. porém o teste condicional e feito no final.

 int cont = 0;
  do{
    print('Valor ${cont + 1}');
    cont++; // condição  de quebra.
  }while(cont < 10);

  print('Fim programa');
}