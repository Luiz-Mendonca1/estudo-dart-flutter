/// Retorna o resultado da operação [op] aplicada a [a] e [b].
///
/// Operações válidas são '+', '-', '*' e '/'.
/// Lança [ArgumentError] se a operação for desconhecida ou se houver divisão por zero.
double calcular(double a, String op, double b) {
  switch (op) {
    case '+':
      return a + b;
    case '-':
      return a - b;
    case '*':
      return a * b;
    case '/':
      if (b == 0) throw ArgumentError('Divisão por zero');
      return a / b;
    default:
      throw ArgumentError('Operação inválida: $op');
  }
}

// função helper antiga mantida apenas para compatibilidade com testes anteriores
int calculate() => 6 * 7;
