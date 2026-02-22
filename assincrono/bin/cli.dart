// codigo disponivel pela documentação dart para estudos 

import 'dart:io';
import 'package:http/http.dart' as http; // biblioteca resposnsavel pela pela requisição http

const version = '0.0.1';

// função principal resposavel receber os comando e execultar as outras funções do codigo
void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'wikipedia') { 
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs); 
  } else {
    printUsage(); 
  }
}

void printUsage() {
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'",
  );
}

// realiza a rquisição da API e retorna o resultado em formato de string
Future<String> getWikipediaArticle(String articleTitle) async {
  final url = Uri.https(
    'en.wikipedia.org',
    '/api/rest_v1/page/summary/$articleTitle',
  );
  final response = await http.get(url); 

  if (response.statusCode == 200) {
    return response.body; 
  }

  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
}

// a função faz uma verificação do conteudo digitado e caso seja valido realiza o getWikipediaArticle para importar as informações
void searchWikipedia(List<String>? arguments) async {
  final String articleTitle;
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    final inputFromStdin = stdin.readLineSync();
    if (inputFromStdin == null || inputFromStdin.isEmpty) {
      print('No article title provided. Exiting.');
      return;
    }
    articleTitle = inputFromStdin;
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');

  var articleContent = await getWikipediaArticle(articleTitle);
  print(articleContent); 
}

