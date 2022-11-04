import 'package:flutter/material.dart';
import 'package:bmipractice/input_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icontextfile.dart';
import 'containerfile.dart';
import 'constantfile.dart';
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
  int sliderHeight=180;
  int sliderWeight=60;
  int sliderAge = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      select == Gender.female;
                    });
                  },
    colors: select == Gender.female?activeColor:deactiveColor,
    cardWidget: RepeatTextandICONWidget(
    iconData: FontAwesomeIcons.female,
    label: 'Female',
    ),
                 ),
    ),
    Expanded(child: new RepeatContainerCode(
      onPressed: (){
        setState(() {
        });
      },
      colors: Color(0xFF1D1E33),
      cardWidget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
      Text('Height', style: kLabelStyle,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('sliderHeight',
            style: kNumberStyle,
            ),
            Text('cm',
            style: kLabelStyle,
            ),
          ],
        ),
        Slider(
          value: sliderHeight.toDouble(),
          min: 120.0,
          max: 220.0,
          activeColor: Color(0xFFEB1555),
          inactiveColor: Color(0xFF8D8E98),
          onChanged: (double value) {
            setState(() {
              sliderHeight = value.round();
            });
          },
        ),
      ],
      ),
      ),
    ),
              Expanded(child: Row(
                  children: <Widget>[
                    Expanded(child: RepeatContainerCode(
                      onPressed: (){
                        setState(() {
                        });
                      },
                      colors: Color(0xFF1D1E33),
                      cardWidget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Weight',
                          style: kLabelStyle,
                          ),
                          Text(
                              sliderWeight.toString(),
                            style: kNumberStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:<Widget> [
                              RoundIcon(
                                iconData: FontAwesomeIcons.minus,
                                onPress: (){
                                  setState(() {
                                    sliderWeight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIcon(
                                iconData: FontAwesomeIcons.plus,
                                onPress: (){
                                  setState(() {
                                    sliderWeight++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    ),
                    Expanded(child: RepeatContainerCode(
                      onPressed: (){
                        setState(() {
                        });
                      },
                      colors: Color(0xFF1D1E33),
                      cardWidget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Age',
                            style: kLabelStyle,
                          ),
                          Text(
                            sliderAge.toString(),
                            style: kNumberStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:<Widget> [
                              RoundIcon(
                                iconData: FontAwesomeIcons.minus,
                                onPress: (){
                                  setState(() {
                                    sliderAge--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIcon(
                                iconData: FontAwesomeIcons.plus,
                                onPress: (){
                                  setState(() {
                                    sliderAge++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    ),
                    Container(
                      color: Color(0XFFEB1555),
                      margin: EdgeInsets.only(top: 10.0),
                      width: double.infinity,
                      height: 80.0,
                    ),
                  ],
    ) ,
              ),
    ],
    ),
          ),
        ],
    ),

    );
  }
}

class RoundIcon extends StatelessWidget {
  RoundIcon({required this.iconData, required this.onPress});
  final IconData iconData;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconData),
        onPressed: onPress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0XFF4C4F5E),
    );
  }
}


