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
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}



class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                gfgApp()
            )
        )
    );
  }
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

            Text('TASBEEH', style: TextStyle(
                color: Colors.yellow, fontWeight: FontWeight.bold),),
          ],
        ),
      ), //AppBar
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: const Color(0xFF81C784),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const CreateTasbeeh()));
                },
                icon: Icon( // <-- Icon
                  Icons.create,
                  size: 24.0,
                ),
                label: Text('Custom'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                ),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Divider(
              color: Colors.lime.shade700,
              //color of divider
              height: 5,
              //height spacing of divider
              thickness: 2,
              //thickness of divier line
              indent: 25,
              //spacing at the start of divider
              endIndent: 25, //spacing at the end of divider
            ),
            SizedBox(
              height: 7,
            ),
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => const CounterTasbeeh (
                        TasbeehText: ' ',
                        TasbeehCount: '',)));
                },
                icon: Icon( // <-- Icon
                  Icons.access_time,
                  size: 24.0,
                ),
                label: Text('Saved'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                ), // <-- Text
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Divider(
              color: Colors.lime.shade700,
              //color of divider
              height: 5,
              //height spacing of divider
              thickness: 2,
              //thickness of divier line
              indent: 25,
              //spacing at the start of divider
              endIndent: 25, //spacing at the end of divider
            ),
            SizedBox(
              height: 7,
            ),
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => AllTasbeehFile()));
                },
                icon: Icon( // <-- Icon
                  Icons.all_inclusive_outlined,
                  size: 24.0,
                ),
                label: Text('All Tasbeeh'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                ), // <-- Text
              ),
            )
          ],
        ),
      ), //Scaffold
      //Removing Debug Banner
    ),
  );
}