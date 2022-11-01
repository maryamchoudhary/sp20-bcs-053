import 'package:flutter/material.dart';
import 'package:bmipractice/input_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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

class RepeatTextandICONWidget extends StatelessWidget {
  RepeatTextandICONWidget({required this.iconData,required this.label});
 final IconData iconData;
 final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Icon(
            iconData,
            size: 80.0,
          ),
          SizedBox(
            height: 15.0,
          ),
          Text('label',style: TextStyle(
            fontSize: 30.0,
          ),)
        ]
    );
  }
}

class RepeatContainerCode extends StatelessWidget {
  RepeatContainerCode({required this.colors,required this.cardWidget});
  final Color colors;
  final Widget cardWidget;
@override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: cardWidget,
      decoration: BoxDecoration(
        color: Color(0xFF1d1E33),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}