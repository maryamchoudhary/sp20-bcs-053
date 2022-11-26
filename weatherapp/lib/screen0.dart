import 'package:flutter/material.dart';
import 'screen1.dart';
import 'screen2.dart';
class Screen0 extends StatelessWidget {
  const Screen0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('Screen0'),
      ),
      body: Center(
        child: Column(
          children: <Widget> [
            ElevatedButton(
              child : Text('Go to screen 1'),
              onPressed: () {
                Navigator.pushNamed(context, '/first');
              },

            ),
            ElevatedButton(
              child : Text('Go to screen 2'),
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
            ),
          ],
        ),
      ),
    );
  }
}
