import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future<void> main(List<String> args) async {
  // await buscarCep();
  //await buscarPost();
  //await ErroCep();
  // await salvarPost();
  await atualizarPost();
}

Future<void> atualizarPost() async {
  var url = "https://jsonplaceholder.typicode.com/posts/1";
  var mapRequest = {
    'id': 1,
    'title': 'Post alterado',
    'body': 'Descrição do post',
    'userId': 1
  };

  var response = await http
      .put(Uri.parse(url), body: convert.jsonEncode(mapRequest), headers: {
    'Content-type': 'application/json; charset=UTF-8',
  });
  print(response.statusCode);
  print(response.body);
}

Future<void> salvarPost() async {
  var url = "https://jsonplaceholder.typicode.com/posts/";
  var mapRequest = {
    'title': 'Post novo',
    'body': 'Descrição do post',
    'userId': 1
  };

  var response =
      await http.post(Uri.parse(url), body: convert.jsonEncode(mapRequest));
  print(response.statusCode);
  print(response.body);
}

Future<void> buscarPost() async {
  var url = "https://jsonplaceholder.typicode.com/posts/";
  var response = await http.get(Uri.parse(url));
  var responseData = convert.jsonDecode(response.body);
  if (responseData is List) {
    responseData.forEach((element) => print(element['id']));
  }
}

Future<void> buscarCep() async {
  var url = "https://viacep.com.br/ws/01000000001000/json/";
  var response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    Map<String, dynamic> responseData = convert.jsonDecode(response.body);

    print(responseData['cep']);
  }
}

Future<void> ErroCep() async {
  var url = "https://viacep.com.br/ws/01006754461000/json/";
  var response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    Map<String, dynamic> responseData = convert.jsonDecode(response.body);

    print(responseData['cep']);
  } else {
    print("há  um erro ${response.reasonPhrase} ");
  }
}
