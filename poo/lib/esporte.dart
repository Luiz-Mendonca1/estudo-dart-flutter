abstract class Pontuacao {
  void calcularPontuacao() {
    print('Calculando pontuação...');
  }
  void exibirColocacao(){}
}

//extends é usado para herança, ou seja, a classe filha herda os atributos e métodos da classe pai
//implements é usado para implementar uma interface, ou seja, a classe filha deve implementar os métodos da interface
class Futebol extends Esporte implements Pontuacao {
  Futebol(super.time);

  @override
  void calcularPontuacao() {
  }

  @override
  void exibirColocacao() {
  }
}

abstract class Esporte {
  String time;

  Esporte(this.time);
}