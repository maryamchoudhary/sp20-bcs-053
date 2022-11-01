import 'package:flutter/material.dart';

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