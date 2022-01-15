Future<void> main(List<String> args) async {
  /*
  processo1().then((mensagem) {
    processo2()
        .then((mensagem) => print(mensagem))
        .catchError((erro) => print(erro));
    print("mensagem: $mensagem");
  }).catchError((erro) {
    print(erro);
  });
*/
  print("inicio do maiun");
  var mensagem = await processo1();

  print(mensagem);
  var mensagem2 = await processo2();
  print(mensagem2);
  try {
    await processo3();
  } on Exception catch (erro) {
    print("erro na chamda do processo3: $erro");
  }
  print("fim do main");
}

Future<String> processo1() async {
  print("Inicio do P1");
  return Future.delayed(Duration(seconds: 1), () => "Fim do processo 1");
}

Future<String> processo2() async {
  print("Inicio do P2");
  return Future.delayed(Duration(seconds: 1), () => "Fim do processo 2");
}

Future<String> processo3() async {
  print("Inicio do P3");
  return Future.delayed(Duration(seconds: 1), throw Exception());
}
