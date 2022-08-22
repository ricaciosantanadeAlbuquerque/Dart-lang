
import 'dart:io';
import 'dart:math';

void main(){
Map<int,String> pessoas = new Map();

// preenchendo o mapa
for(int i =0; i <3;i++){
print("Digite um nome !");
String? entrada = stdin.readLineSync();
pessoas[i] = entrada!; // ! not null

}
// mostrando os valores e suas chaves 

pessoas.forEach((key,value){ // para cada elemento do meu map pessoa mostre o chave e o valor !
print("Na chave => [$key] temos os valores => [${value}]");
});

// mostrando o ganhador 
Random ale = new Random();
int cont = 0;

 pessoas.forEach((key,value){
  cont = ale.nextInt(3); // serão gerados valores aleatórios entre 0 e 2

  print(cont); // mostrando o valor

   if(key == cont){ // se o valor sorte ado for 0 e for igual a chave 0 então será mostrado o valor da chave 0
    print("O vencedor é  $value ");     
    }
 });
  print(pessoas);



}