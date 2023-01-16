import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:finalgame/main.dart';
import 'package:flutter/material.dart';

class ShowResult extends StatefulWidget {
  var random;
  var randomplus;
  var randomminus;
  ShowResult(this.random, this.randomplus,this.randomminus);

  @override
  State<ShowResult> createState() => _ShowResultState(random,randomplus,randomminus);
}

class _ShowResultState extends State<ShowResult> {
  var random;
  var randomplus;
  var randomminus;
  _ShowResultState(this.random, this.randomplus,this.randomminus);
  void adddata() async{
    await FirebaseFirestore.instance.collection("randoms").doc("num").set({"number": FieldValue.arrayUnion(random)});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Game"),
        backgroundColor: Colors.grey,),
        body:SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text("Tries",style: TextStyle(color: Colors.lightGreen,fontWeight:  FontWeight.bold,fontSize: 22),),
                         SizedBox(width: 30,),
                         Text("R/W",style: TextStyle(color: Colors.lightGreen,fontWeight:  FontWeight.bold,fontSize: 22),),
                         SizedBox(width: 30,),
                         Text("Right Option",style: TextStyle(color: Colors.lightGreen,fontWeight:  FontWeight.bold,fontSize: 22),),
                         SizedBox(width: 30,),
                       ],
                     ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("2",style: TextStyle(fontWeight:  FontWeight.bold,fontSize: 18),),
                          SizedBox(width: 30,),
                          Text("$randomplus / $randomminus",style: TextStyle(fontWeight:  FontWeight.bold,fontSize: 18),),
                          SizedBox(width: 30,),
                          Text("$random",style: TextStyle(fontWeight:  FontWeight.bold,fontSize: 18),),
                          SizedBox(width: 30,),
                        ],
                      ),
                      SizedBox(height: 20,),

                    ],
                  ),
                  SizedBox(height: 50,),
                  Container(
                    color: Colors.blueGrey,
                    width: 180,
                    height: 70,
                    child: RawMaterialButton(onPressed: (){
                      setState(() {
                        adddata();
                      });

                    },
                      child: Text("firebase ",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    color: Colors.blueGrey,
                    width: 200,
                    height: 70,
                    child: RawMaterialButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Home()),);
                    },
                      child: Text("Improve ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
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
