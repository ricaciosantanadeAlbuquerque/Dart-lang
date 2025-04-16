class Logger {
  static final Logger _instancia = new Logger._contrutorNomeado(); // linha de instânciamento
  final List<String> _logs = [];

/// Sempre retorna a mesma  instância
  factory Logger() => _instancia;

  Logger._contrutorNomeado();

/// adiciona as mensagens na lista de mensagens
  void log({required String mensagem}) {
    final timeStamp = new DateTime.now().toIso8601String();
    this._logs.add('[$timeStamp]: $mensagem '); // adicionamos as mensagens com tempo e data
  }

  void showLogs() {
    if (this._logs.isNotEmpty) {
      this._logs.forEach(print);
    } else {
      print('ERRO !!! valor não foi aceito.');
    }
  }
}
