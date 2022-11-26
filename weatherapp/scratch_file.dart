import 'dart:io';

void main(){
  performTasks();
}
void performTasks() async{
  task1();
  String r=await task2();
  task3(r);
}
void task1() {
  String result = 'task 1 data';
  print('task 1 complete');
}
Future<String> task2() async {
  Duration d= Duration(seconds: 5);
  String result;
  await Future.delayed(d,(){
   result= 'task 2 data';
    print('task 2 complete');
  });
  return result;
}
void task3(String resultof2) {
  String result = 'task 3 data';
  print('task 3 complete $resultof2');
}