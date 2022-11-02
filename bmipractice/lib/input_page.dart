import 'package:flutter/material.dart';
import 'package:bmipractice/input_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icontextfile.dart';
import 'containerfile.dart';
const activeColor = Color(0xFF1D1E33);
const deactiveColor = Color(0xFF111328);
class InputPage extends StatefulWidget {


  @override
  State<InputPage> createState() => _InputPageState();
}
enum Gender{
  male,
  female,
}
class _InputPageState extends State<InputPage> {
  late Gender select;
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
                onPressed: (){
                  setState(() {
                    select == Gender.male;
                  });
                },
          colors: select == Gender.male?activeColor:deactiveColor,
      cardWidget: RepeatTextandICONWidget(
        iconData: FontAwesomeIcons.male,
        label: 'Male',
      ),
      ),
              ),
              Expanded(
                child: RepeatContainerCode(
                  onPressed: (){
                    setState(() {
                      select == Gender.male;
                    });
                  },
    colors: select == Gender.female?activeColor:deactiveColor,
    cardWidget: RepeatTextandICONWidget(
    iconData: FontAwesomeIcons.female,
    label: 'Female',
    ),
                 ),
          Expanded(child: RepeatContainerCode(
    ),
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



