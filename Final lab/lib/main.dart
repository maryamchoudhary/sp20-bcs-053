import 'package:finalgame/screens/adddata.dart';
import 'package:finalgame/screens/generatenumber.dart';
import 'package:finalgame/screens/showreults.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

void main()  {
  WidgetsFlutterBinding.ensureInitialized();
   Firebase.initializeApp(
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "APP",
        home: Home(),
    );
  }
}



class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Game", textAlign: TextAlign.center,),
      backgroundColor: Colors.grey,),
      body:SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Column(
              children: [
                Container(
                  color: Colors.greenAccent,
                  width: 150,
                  height: 70,
                  child: RawMaterialButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Generate()),);
                  },
                  child: Text("Play Game ",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  color: Colors.blueGrey,
                  width: 170,
                  height: 70,
                  child: RawMaterialButton(onPressed: (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const ShowResult()),);
                  },
                    child: Text("Show Result ",
                      style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}


