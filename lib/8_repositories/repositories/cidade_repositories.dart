import 'package:dart_async/8_repositories/models/cidade_model.dart';
import 'package:http/http.dart';

class CidadeRepositories {
  Future<CidadeModel> buscarCidade() async {
    var url = "https://viacep.com.br/ws/01001000/json/";

    var response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      return CidadeModel.fromJson(response.body);
    } else {
      throw Exception("erro ao busca cep");
    }
  }
}
