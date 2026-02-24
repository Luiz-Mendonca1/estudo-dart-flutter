import 'package:poo/conta.dart';

void main() {
  Conta contaJoao = Conta('João', 500.0);
  Conta contaThais = Conta('Thais', -2500.0);
  ContaPoupanca contaPoupanca = ContaPoupanca('Maria', 1000.0, 0.05);
  ContaCorrente contaCorrente = ContaCorrente('Carlos', 2000.0, 500.0);

  List<Conta> contas = [contaJoao, contaThais];

  contaPoupanca.imprimirSaldo(contaPoupanca);
  contaCorrente.imprimirSaldo(contaCorrente);

  print('-------------------------------------');

  contaPoupanca.aplicarJuros();
  contaCorrente.enviar(100.0);

  contaPoupanca.imprimirSaldo(contaPoupanca);
  contaCorrente.imprimirSaldo(contaCorrente);
}
