Future<void> main() async {
  var nomes = ["Carlos", "Kelvin", "José"];
  print("inicio");

/*
menos comum
  await Future.forEach<String>(nomes, (nome) async {
    print(await saudacao(nome));
  });*/

  //mais comum
  /*
  for (var nome in nomes) {
    print(await saudacao(nome));
  }*/

  var nomesFuturos = nomes.map((nome) => saudacao(nome)).toList();
  var saudacoes = await Future.wait(nomesFuturos);
  print(saudacoes);
  print("fim");
}

/*
 nomes.forEach((nome) async {
    await saudacao(nome);
  });
  */
Future<String> saudacao(String nome) {
  print("inicio $nome");
  return Future.delayed(Duration(seconds: 1), () {
    print("fim $nome");
    return "Olá $nome";
  });
}
