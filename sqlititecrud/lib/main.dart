import 'package:flutter/material.dart';

void main() {
  runApp(const MyHomePage());
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sqlite CRUD'),
      ),
      body: const Center(
        child: Text('Sqlite'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Icon: Icon(Icons.add);
        },
      ),
    );
  }
}

