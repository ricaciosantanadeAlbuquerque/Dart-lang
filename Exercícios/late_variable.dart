
 //double num1;// Este código não será executado pois o compilador não reconhece a variável num1
 // para resolver este problema use o operador late; 
 late String nome; // a inicialização da variável nome ficou por conta do programador, deve ser feito antes da variável ser utilizada;
void main(){
 double num2 = 300.00; // como num2 foi declarada e  inicializada dentro da função main() ela poderá ser utilizada.
//num1 = 1500.00;
//print(num1);
nome = "ricacio";
print(num2);
print(nome);
}