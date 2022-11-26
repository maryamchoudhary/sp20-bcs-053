import 'package:flutter/material.dart';
import 'package:weatherapp/screen1.dart';
import 'package:weatherapp/screen2.dart';
import 'ui/climatefile.dart';
import 'screen1.dart';
import 'screen0.dart';
import 'screen2.dart';
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Climate',
  home: Climate(),
),);
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context) => Screen0(),
        '/first' : (context) => Screen1(),
        '/second' : (context) => Screen2(),
      },
    );
  }
}

