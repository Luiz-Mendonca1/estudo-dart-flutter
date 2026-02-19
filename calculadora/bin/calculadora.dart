import 'dart:io';

final List<String> operacoes = ['+', '-', '*', '/'];

double lerNumero(String prompt) {
  while (true) {
    stdout.write(prompt);
    final entrada = stdin.readLineSync();
    if (entrada != null) {
      final valor = double.tryParse(entrada.replaceAll(',', '.'));
      if (valor != null) {
        return valor;
      }
    }
    print('Entrada inválida. Por favor digite um número.');
  }
}

String lerOperacao() {
  while (true) {
    stdout.write('Digite uma operação (${operacoes.join(' ')}): ');
    final entrada = stdin.readLineSync();
    if (entrada != null && operacoes.contains(entrada.trim())) {
      return entrada.trim();
    }
    print('Operação inválida. Use uma das operações: ${operacoes.join(' ')}');
  }
}

void main() {
  print('=== Calculadora simples ===');

  final num1 = lerNumero('Primeiro número: ');
  final op = lerOperacao();
  final num2 = lerNumero('Segundo número: ');

  double resultado;
  switch (op) {
    case '+':
      resultado = num1 + num2;
      break;
    case '-':
      resultado = num1 - num2;
      break;
    case '*':
      resultado = num1 * num2;
      break;
    case '/':
      if (num2 == 0) {
        print('Erro: divisão por zero.');
        return;
      }
      resultado = num1 / num2;
      break;
    default:
      throw StateError('Operação desconhecida: $op');
  }

  print('Resultado: $num1 $op $num2 = $resultado');
}
