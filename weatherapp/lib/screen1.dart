import 'package:flutter/material.dart';
import 'screen2.dart';
import 'screen2.dart';
class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Screen1'),
      ),
      body: Center(
        child:  ElevatedButton(
          child: Text('Go forward to screen 2'),
          onPressed: () {
           Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen2() ));
          },
        ),
      ),
    );
  }
}

