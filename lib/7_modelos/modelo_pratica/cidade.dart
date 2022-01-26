import 'dart:convert';
import 'package:http/http.dart';

import 'cidade_model.dart';

void main(List<String> args) {
  buscarCepWithModel();
}

Future<void> buscarCep() async {
  var url = "https://viacep.com.br/ws/01001000/json/";
  var response = await get(Uri.parse(url));
  var map = jsonDecode(response.body);
  print(map['cep']);
}

Future<void> buscarCepWithModel() async {
  var url = "https://viacep.com.br/ws/01001000/json/";
  var response = await get(Uri.parse(url));
  var cidade = CidadeModel.fromJson(response.body);
  print(cidade);
}
