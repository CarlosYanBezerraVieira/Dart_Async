import 'dart:async';

void main(List<String> args) {
  print("inicio Main");
  scheduleMicrotask(() => print("microtask1"));
  print(DateTime.now());
  Future.delayed(Duration(seconds: 1), () {
    print(DateTime.now());
    print("future #1 delayed");
  });
  Future(() => print("future #2"));
  Future(() => print("future #3"));

  scheduleMicrotask(() => print("microtask2"));
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