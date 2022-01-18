import 'dart:async';

Future<void> main(List<String> args) async {
  print("inicio Main");
  scheduleMicrotask(() => print("microtask1"));

  await Future.delayed(Duration(seconds: 1), () => print("future #1 delayed"));
  await Future(() => print("future #2"));
  scheduleMicrotask(() => print("microtask2"));
  await Future(() => print("future #3"));

  print("Fim main");
}

/*
Event 
 Future.delayed
  Future #2
  Future #3
*/


/*
MicroTask
main
microtask#1
microtask#2
*/