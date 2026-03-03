import 'package:poo/conta.dart';

void main() {
  ContaCorrente contaChris = ContaCorrente("Chris", 4000, 2);
  ContaPoupanca contaDenize = ContaPoupanca("Denize", 4000, 2);
  ContaEmpresa contaMatheus = ContaEmpresa("Matheus", 2000);
  ContaInvestimento contaRoberta = ContaInvestimento("Roberta", 2000);

  contaChris.imprimirSaldo();
  contaChris.enviar(4300);

  contaDenize.imprimirSaldo();
  contaDenize.enviar(4300);
  contaDenize.calculaRendimento();
  contaDenize.imprimirSaldo();

  contaMatheus.enviar(1000);
  contaRoberta.receber(1000);
}
