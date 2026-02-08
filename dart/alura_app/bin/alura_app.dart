import 'dart:io';

void main() {
  print("seu nome é: ");
  var nome = stdin.readLineSync();
  print('sua idade: ');
  var idade = stdin.readLineSync();
  print("Olá $nome, seja bem vindo! Você tem $idade anos.");
}
