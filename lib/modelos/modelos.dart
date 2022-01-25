import 'dart:convert';

import 'package:dart_async/modelos/cidade.dart';
import 'package:http/http.dart';

void main(List<String> args) {
  buscarCep();
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
