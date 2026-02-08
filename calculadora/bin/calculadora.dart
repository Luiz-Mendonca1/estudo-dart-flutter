import 'dart:io';

void main() {
  double? n1 = double.tryParse(stdin.readLineSync()!);
  double? n2 = double.tryParse(stdin.readLineSync()!);

  void soma() {
    print(n1! + n2!);
  }

  void subtracao() {
    print(n1! - n2!);
  }

  void multiplicacao() {
    print(n1! * n2!);
  }

  void divisao() {
    print(n1! / n2!);
  }

  divisao();
}
