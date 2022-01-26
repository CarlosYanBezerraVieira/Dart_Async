import 'package:dart_async/8_repositories/repositories/cidade_repositories.dart';

Future<void> main(List<String> args) async {
  var cidadeRepositories = CidadeRepositories();

  try {
    var cidade = await cidadeRepositories.buscarCidade();
    print(cidade);
  } catch (e) {
    print("ouve um erro ao buscar cidade");
  }
}
