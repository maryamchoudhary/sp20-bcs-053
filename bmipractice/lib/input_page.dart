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

class _InputPageState extends State<InputPage> {
  Color maleColor = deactiveColor;
  Color femaleColor = deactiveColor;
  void updateColor(int gender)
  {
    if (gender==1){
      maleColor = activeColor;
      femaleColor = deactiveColor;
    }
    if (gender==2){
      maleColor = deactiveColor;
      femaleColor = activeColor;
    }
  }
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
              Expanded(child: GestureDetector(
                onTap: ()
      {
       setState(() {
         updateColor(1);
       });
      },
                child: RepeatContainerCode(
          colors: maleColor,
      cardWidget: RepeatTextandICONWidget(
        iconData: FontAwesomeIcons.male,
        label: 'Male',
      ),
      ),
              ),),
              Expanded(child: GestureDetector(
                onTap: ()
                {
                  setState(() {
                    updateColor(2);
                  });
                },
                child: RepeatContainerCode(
    colors: femaleColor,
    cardWidget: RepeatTextandICONWidget(
    iconData: FontAwesomeIcons.female,
    label: 'Female',
    ),
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



