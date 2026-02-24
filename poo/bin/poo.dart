import 'package:poo/conta.dart';

void main() {
  Conta contaJoao = Conta('João', 500.0);
  Conta contaThais = Conta('Thais', -2500.0);

  List<Conta> contas = [contaJoao, contaThais];

  for (var conta in contas) {
    conta.imprimirSaldo(conta);
  }

  print('-------------------------------------');

  contaJoao.enviar(100.0);
  contaThais.receber(100.0);

  for (var conta in contas) {
    conta.imprimirSaldo(conta);
  }
}

