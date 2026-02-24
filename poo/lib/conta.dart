class Conta {
  void receber(double valor) {
    _saldo += valor;
    print('Valor recebido: $valor. Saldo atual: $_saldo');
  }

  void enviar(double valor) {
    if (valor > _saldo) {
      print('Saldo insuficiente para enviar $valor. Saldo atual: $_saldo');
    } else {
      _saldo -= valor;
      print('Valor enviado: $valor. Saldo atual: $_saldo');
    }
  }

  void imprimirSaldo(Conta conta) {
    print('Saldo da conta de ${conta.nome}: ${conta._saldo}');
  }

  String nome;
  double _saldo;
  //colocada "_" para indicar que a variável é privada, ou seja, só pode ser acessada dentro da classe

  Conta(this.nome, this._saldo);
}

