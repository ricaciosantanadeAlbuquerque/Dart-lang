/**
 *  Média 
 */
void main() {
  var media1 = media();
  print(media1);
  media1(10.0, 10.0, 10.0, 10.0);
}

Function media = () {
  return (double a, double b, double c, double d) {
    var mensagem = (a + b + c + d) / 4;
    print("\nMédia ${mensagem}\n");
  };
};
