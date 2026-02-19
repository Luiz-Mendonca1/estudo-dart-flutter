import 'package:calculadora/calculadora.dart';
import 'package:test/test.dart';

void main() {
  group('cálculo básico', () {
    test('adição', () {
      expect(calcular(2, '+', 3), 5);
    });

    test('subtração', () {
      expect(calcular(10, '-', 4), 6);
    });

    test('multiplicação', () {
      expect(calcular(6, '*', 7), 42);
    });

    test('divisão', () {
      expect(calcular(9, '/', 3), 3);
    });

    test('divisão por zero lança', () {
      expect(() => calcular(1, '/', 0), throwsArgumentError);
    });

    test('operação inválida lança', () {
      expect(() => calcular(1, '%', 2), throwsArgumentError);
    });
  });

  // manter teste legado para compatibilidade
  test('calculate retorna 42', () {
    expect(calculate(), 42);
  });
}
