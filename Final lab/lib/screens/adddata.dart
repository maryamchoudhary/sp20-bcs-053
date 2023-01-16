import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class SaveData extends StatefulWidget {
  var random;
  SaveData(this.random);

  @override
  State<SaveData> createState() => _SaveDataState(random);
}

class _SaveDataState extends State<SaveData> {
  var random;
  _SaveDataState(this.random);
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
                  Text("Number of tries out of number",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  SizedBox(height: 50,),
                  Container(
                    color: Colors.blueGrey,
                    width: 150,
                    height: 70,
                    child: RawMaterialButton(onPressed: (){

                    },
                      child: Text("firebase ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Container(
                    color: Colors.blueGrey,
                    width: 150,
                    height: 70,
                    child: RawMaterialButton(onPressed: (){},
                      child: Text("Add in sqlite ",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
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
