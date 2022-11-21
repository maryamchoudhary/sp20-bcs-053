import 'dart:async';
import 'dart:js';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'CounterFile.dart';
import 'CreateFile.dart';
import 'AllTasbeehFile.dart';

void main() {
  runApp(MyApp()); //MaterialApp
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tasbhee',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        color: const Color(0xFF81C784),
        image: DecorationImage(
            image: AssetImage("images/tasbeeh pic.jpg"),
            fit: BoxFit.cover),
      ),

    );
  }
}


MaterialApp gfgApp() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black12,
        // title: const Text('TASBEEH',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
        title: Row(
          children: [

            Text('TASBEEH',style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold),),

            SizedBox(width: 150,),
            TextButton(onPressed: (){}, child: Text('Custom',
                textAlign: TextAlign.center,),),
            SizedBox(width: 20,),

            TextButton(onPressed: (){}, child: Text('Saved',textAlign: TextAlign.center,),),

          ],
        ),
      ), //AppBar
      body:Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: const Color(0xFF81C784),
          image: DecorationImage(
              image: AssetImage("images/ff.jpg"),
              fit: BoxFit.cover),
        ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            child: ElevatedButton.icon(
              onPressed:() {} ,
              icon: Icon( // <-- Icon
                Icons.create,
                size: 24.0,
              ),
              label: Text('Custom'),
              style: ElevatedButton.styleFrom(
                primary: Colors.teal.shade800,
              ),
            ),
        ),
        SizedBox(
          height: 7,
        ),
        Divider(
          color: Colors.lime.shade700, //color of divider
          height: 5, //height spacing of divider
          thickness: 2, //thickness of divier line
          indent: 25, //spacing at the start of divider
          endIndent: 25, //spacing at the end of divider
        ),
        SizedBox(
          height: 7,
        ),
        Expanded(
          child: ElevatedButton.icon(
            onPressed: () {
            },
            icon: Icon( // <-- Icon
              Icons.access_time,
              size: 24.0,
            ),
            label: Text('Counter'),
            style: ElevatedButton.styleFrom(
              primary: Colors.teal.shade800,
            ),// <-- Text
          ),
        ),
        SizedBox(
          height: 7,
        ),
        Divider(
          color: Colors.lime.shade700, //color of divider
          height: 5, //height spacing of divider
          thickness: 2, //thickness of divier line
          indent: 25, //spacing at the start of divider
          endIndent: 25, //spacing at the end of divider
        ),
        SizedBox(
          height: 7,
        ),
        Expanded(
          child: ElevatedButton.icon(
            onPressed: () {
            },
            icon: Icon( // <-- Icon
              Icons.all_inclusive_outlined,
              size: 24.0,
            ),
            label: Text('All Tasbeeh'),
            style: ElevatedButton.styleFrom(
              primary: Colors.teal.shade800,
            ),// <-- Text
          ),
        )
      ],
  ),
    ),//Scaffold
    //Removing Debug Banner
  ),
  );
}