import 'package:flutter/material.dart';
import 'package:bmipractice/input_page.dart';

class InputPage extends StatefulWidget {


  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: <Widget> [
          Expanded(child: Row(
            children: <Widget> [
              Expanded(child: RepeatContainerCode(
          colors: Color(0xFF1D1E33),
      ),),
              Expanded(child: RepeatContainerCode(
    colors: Color(0xFF1D1E33),
    ),),
          Expanded(child: RepeatContainerCode(
    colors: Color(0xFF1D1E33),
    ),),
          Expanded(child: Row(
          children: <Widget> [
    Expanded(child: RepeatContainerCode(
    colors: Colors.blue
    ),),
    Expanded(child: RepeatContainerCode(
    colors: Color(0xFF1D1E33),
    ),),
    ],
    ),),
        ],
    ),
    ),]
    ),
    );
  }
}

class RepeatContainerCode extends StatelessWidget {
  RepeatContainerCode({@required this.colors});
  Color colors;
@override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color(0xFF1d1E33),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}