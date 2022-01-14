void main(List<String> args) {
  print("Inicio do p1");
  processo2();
  //Future = dois processos
  //Incompleto, concluido(com valor, com erro)

  //concluido --> then
  //com erro --> CatchErro ou OnError
  //WhenComplete sempre será executado
  processo3().then((mensagem) {
    print(mensagem);
  });

  processo4()
      .then((mensagem) => print("mensagem do P4 $mensagem"))
      .catchError((erro) => print("Erro ao executar o P4"))
      .whenComplete(() => print("finalizo com erro"));

  processo4().then(
    (mensagem) => print("mensagem do P4 $mensagem"),
    onError: (erro) {
      print("Tratamento de erro pelo OnErro do then");
    },
  );

  /*
  processo3().then((mensagem) {
    throw Exception();
  }, onError: (erro) {
    print("erro de dentro do then");
  });

  ;
*/
  processo3()
      .then((value) => print(value))
      .whenComplete(() => print("finalizo com sucesso"));

  print("fim do p1");
}

Future<String> processo4() async {
  print("inicio P4");
  return Future.delayed(Duration(seconds: 3), () => throw Exception());
}

Future<String> processo3() async {
  print("Inicio do P3");
  return Future.delayed(Duration(seconds: 1), () => "Fim do processo 3");
}

Future<void> processo2() async {
  print("inicio do p2");
  Future.delayed(Duration(seconds: 2), () {
    var i = 0;
    while (i < 3) {
      print(i);
      i++;
    }
    print("fim do p2");
  });
}
