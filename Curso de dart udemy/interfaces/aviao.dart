import 'veiculo.dart';

class Aviao extends Veiculo {
  @override
  void acelerar() {
    if (status == true) {
    super.acelerar();
    print('Como umavião');
  }
    }
    
  }

