import 'package:bmipractice/constantfile.dart';
import 'package:flutter/material.dart';
import 'containerfile.dart';
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
          Text('label',style: kLabelStyle
          ),
        ]
    );
  }
}