import 'dart:math';
import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain{
  CalculatorBrain({required this.height,required this.weight});
  final int height;
  final int weight;
  double _bmi;

  String calculate_bmi(){
    _bmi=weight/pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }

  String get_result(){
    if(_bmi>= 25){
      return 'Overweight';
    }
    else if(_bmi>18.5){
      return 'Normal';
    }
    else {
      return 'Under Weight';
    }
  }

  String get_interpretation(){
    if(_bmi>= 25){
      return 'You have a heigher than a normal body weight. Try to Exercise more!';
    }
    else if(_bmi>18.5){
      return ' You have Normal body weight. GOOD JOB!';
    }
    else {
      return 'You have a lower than Normal body weight. You can ear a bit more!';
    }
  }
}