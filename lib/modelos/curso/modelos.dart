import 'package:dart_async/modelos/curso/cidade_curso.dart';
import 'package:dart_async/modelos/curso/user.dart';
import 'package:http/http.dart';

import 'cidade_curso.dart';

void main(List<String> args) {
  // buscarCep();
  buscarUser();
}

Future<void> buscarCep() async {
  var url = "https://viacep.com.br/ws/01001000/json/";
  var response = await get(Uri.parse(url));
  // if (response.statusCode == 200) {
  //   Map<String, dynamic> responseData = jsonDecode(response.body);

  //   print(responseData['cep']);
  // }

  var cidade = Cidade.fromJson(response.body);
  print(cidade);
  print(cidade.toMap());
  print(cidade.toJson());
}

Future<void> buscarUser() async {
  var url = "justexample";
  var response = await get(Uri.parse(url));
  if (response.statusCode == 200) {
    var user = User.fromJson(response.body);
    print(user);
  }
}
