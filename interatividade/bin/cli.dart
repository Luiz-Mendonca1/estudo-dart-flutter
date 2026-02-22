// codigo para testar interatividade da linha de comando (CLI) em Dart. Ele suporta os seguintes comandos:
// - `help`: Exibe as instruções de uso.
// - `version`: Exibe a versão do CLI.
// - `search <ARTICLE-TITLE>`: Permite ao usuário pesquisar um artigo na "D

import 'dart:io'; 

// resposta dada pelo 'version' do CLI. Você pode alterar o número da versão conforme necessário para refletir as atualizações do seu CLI.
const version = '0.0.1'; 

// função para imprimir as instruções de uso do CLI. Ela é chamada quando o usuário solicita ajuda ou quando um comando inválido é fornecido.
void printUsage() {
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'",
  );
}

// função para simular a pesquisa de um artigo na "Dartpedia". Ela aceita uma lista de argumentos, que pode ser nula ou vazia. Se os argumentos forem nulos ou vazios, a função solicitará ao usuário que insira um título de artigo. Caso contrário, ela juntará os argumentos para formar o título do artigo e simulará a exibição do resultado da pesquisa.
void searchWikipedia(List<String>? arguments) {
  final String articleTitle;

  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

// função principal do programa, que é o ponto de entrada para a execução do CLI. Ele recebe uma lista de argumentos da linha de comando e determina qual ação executar com base no primeiro argumento. Se o primeiro argumento for 'help', ele chama a função `printUsage()`. Se for 'version', ele imprime a versão do CLI. Se for 'search', ele chama a função `searchWikipedia()` passando os argumentos restantes. Se nenhum comando válido for fornecido, ele também chama `printUsage()` para orientar o usuário.
void main(List<String> arguments) {
  // recebe o arguments. firts para determinar a ação a ser executada. Ele verifica se os argumentos estão vazios ou se o primeiro argumento é 'help', caso em que chama a função `printUsage()`. Se o primeiro argumento for 'version', ele imprime a versão do CLI. Se o primeiro argumento for 'search', ele chama a função `searchWikipedia()` passando os argumentos restantes (se houver). Se nenhum comando válido for fornecido, ele também chama `printUsage()` para orientar o usuário sobre os comandos disponíveis.
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}
