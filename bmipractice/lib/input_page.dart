import 'package:flutter/material.dart';
import 'package:bmipractice/input_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icontextfile.dart';
import 'containerfile.dart';

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
      cardWidget: RepeatTextandICONWidget(
        iconData: FontAwesomeIcons.male,
        label: 'Male',
      ),
      ),),
              Expanded(child: RepeatContainerCode(
    colors: Color(0xFF1D1E33),
    cardWidget: RepeatTextandICONWidget(
    iconData: FontAwesomeIcons.female,
    label: 'Female',
    ),
               ),
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



