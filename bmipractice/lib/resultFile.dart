import 'package:flutter/material.dart';
class resultscreen extends StatelessWidget {
  const resultscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
      ),
      body: Text('body data'),
    );
  }
}