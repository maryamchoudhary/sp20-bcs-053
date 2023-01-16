import 'dart:math';

import 'package:finalgame/screens/showreults.dart';
import 'package:flutter/material.dart';

class Generate extends StatefulWidget {
  const Generate({Key? key}) : super(key: key);

  @override
  State<Generate> createState() => _GenerateState();
}

class _GenerateState extends State<Generate> {
  int random=0;
  var randomplus=0;
  var randomminus=0;
  var wrong;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Game"),
        backgroundColor: Colors.grey,),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.blueGrey,
                    width: 200,
                    height: 70,
                    child: RawMaterialButton(
                      onPressed: () {
                       setState(() {
                         random=Random().nextInt(201);
                         randomplus=random+2;
                         randomminus=random-5;
                       });
                      },
                      child: Text(
                        "Generate Number ",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "$wrong",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                var check;
                                if(random==randomplus){
                                  check=random;
                                }
                                else{
                                  wrong="You guess wrong ";
                                }
                              });
                            },
                            child: Container(
                              color: Colors.greenAccent,
                              width: 50,
                              height: 50,
                              child: Center(child: Text("$randomplus")),
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                          child: GestureDetector(
                            onTap: (){
                             setState(() {
                               var check;
                               if(random==randomminus){
                                 check=random;
                               }
                               else{
                                 wrong="You guess wrong ";
                               }
                             });
                              },
                            child: Container(
                              color: Colors.greenAccent,
                              width: 50,
                              height: 50,
                              child: Center(child: Text("$randomminus")),
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                          child: GestureDetector(
                            onTap: (){

                             setState(() {
                               if(random==random){
                                 wrong="You guess Right ";
                               }
                             });

                            },
                            child: Container(
                              color: Colors.greenAccent,
                              width: 50,
                              height: 50,
                              child: Center(child: Text("$random")),
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                      ],
                    ),

                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  ShowResult(random,randomplus,randomminus)),);
                            },
                            child: Container(
                              color: Colors.blueGrey,
                              width: 100,
                              height: 70,
                              child: Center(child: Text("Show Result",style: TextStyle(fontSize: 22),)),
                            ),
                          ),
                        ),
                        SizedBox(width: 40,),
                        Expanded(
                          child: GestureDetector(
                            onTap: (){},
                            child: Container(
                              color: Colors.blueGrey,
                              width: 100,
                              height: 70,
                              child: Center(child: Text("Retry",style: TextStyle(fontSize: 22),)),
                            ),
                          ),
                        ),
                      ],
                    ),

                  ),

                ],
              ),
            ),
          ),
        ));
  }
}
