// basico de listas
//conteudo disponibilizado pela alura
import 'dart:io';

void main() {
  List<String> notas = <String>[];
  getComando();
  addNota(notas);
}

String getComando() {
  print('Digite um comando 1-add nota, 2-listar notas, 3:sair:');
  List<String> comandos = <String>['1', '2', '3'];
  String? entrada = '';

  entrada = stdin.readLineSync();

  if (entrada == null || !comandos.contains(entrada)) {
    print("comando invalido");
    getComando();
  }
  return entrada!;
}

List<String> addNota(List<String> notas) {
  print("Escreva a nota ");
  String? nota = "";

  nota = stdin.readLineSync();

  if (nota == null || nota.isEmpty) {
    print('Não é permitido nota vazia');
    addNota(notas);
  }
  notas.add(nota!);

  return notas;
}

void listarNotas(List<String>notas){
  for(var i = 0; i<notas.length; i++){
    print(notas[i]);
  }
}