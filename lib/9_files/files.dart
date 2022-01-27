import 'dart:io';

Future<void> main(List<String> args) async {
  var file = File('lib/9_files/files/file.text');
  // leitura sincrona
  // var fileDate = file.readAsStringSync();
  // print(fileDate);

  //leitura assincrona
  // var fileDate = await file.readAsString();
  // print(fileDate);

  //leitura linha sincrona

  // var fileList = file.readAsLinesSync();
  // print(fileList[0]);

  //leitura linha assincrona
  // var fileList = await file.readAsLines();
  // print(fileList[0]);
  //escrever

//assincrona

  // var file2 = File('lib/9_files/files/file2.text');

  // await file2.writeAsString('love is love \n', mode: FileMode.append);
  // var leitura = await file2.readAsLines();
  // print(leitura);

//sincrona
  // var file2 = File('lib/9_files/files/file2.text');

  // await file2.writeAsString('love is love \n', mode: FileMode.append);
  // var leitura = file2.readAsLinesSync();
  // print(leitura);

  //varias linhas de uma vez

  var listaNomes = ['Carlos', 'João', 'rodrigo'];
  var file3 = File('lib/9_files/files/file3.text');
  var write = file3.openWrite(mode: FileMode.append);
  listaNomes.forEach((nome) => write.write('$nome \n'));
}
