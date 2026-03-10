import 'package:http/http.dart';
import 'dart:convert';

void main(List<String> arguments) {
  // print('Hello world!');
  // requestData();
  requestDataAsync();
}

void requestData() {
  String url =
      "https://gist.githubusercontent.com/Luiz-Mendonca1/688b662dde3ecc10a3a09e3c3dce2a4e/raw/cb8ef08533b69bdb6ea56e57ce71ff92e3769be6/accounts.json";
  //indica respsota assincrona, esperando o resultado para entregar o resultado URL
  Future<Response> futureResponse = (get(Uri.parse(url)));
  print(futureResponse);
  futureResponse.then((Response response) {
    print(response);
    print(response.body);
    List<dynamic> listAcconts = json.decode(response.body);
    Map<String, dynamic> mapCarla = listAcconts.firstWhere(
      (element) => element["name"] == "Carla",
    );
    print(mapCarla["balance"]);
    print("penultima ação");
  });
}

requestDataAsync() async {
  String url =
      "https://gist.githubusercontent.com/Luiz-Mendonca1/688b662dde3ecc10a3a09e3c3dce2a4e/raw/cb8ef08533b69bdb6ea56e57ce71ff92e3769be6/accounts.json";
  Response response = await get(Uri.parse(url));
  print(json.decode(response.body)[0]);
  print("ultima ação");
}
