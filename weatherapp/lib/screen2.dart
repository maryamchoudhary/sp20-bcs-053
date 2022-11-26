import 'package:flutter/material.dart';
import 'screen1.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('Screen1'),
      ),
      body: Center(
        child:  ElevatedButton(
          child: Text('Go forward to screen 2'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

