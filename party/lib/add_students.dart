import 'package:flutter/material.dart';
import 'package:party/home.dart';

import 'database.dart';

final dbHelper = DatabaseHelper();

class AddStudents extends StatefulWidget {
  const AddStudents({Key? key}) : super(key: key);

  @override
  _AddStudentsState createState() => _AddStudentsState();
}

class _AddStudentsState extends State<AddStudents> {
  TextEditingController regCon = new TextEditingController();
  TextEditingController nameCon = new TextEditingController();
  TextEditingController emailCon = new TextEditingController();
  TextEditingController addressCon = new TextEditingController();
  TextEditingController phoneCon = new TextEditingController();

  bool isloading = false;
  int a = 1;

  bool check = false;
  bool _isMale = false;
  bool _isFemale = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
        ),
        centerTitle: true,
        title: Text("Add Student"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: isloading
          ? CircularProgressIndicator()
          : Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Column(
                children: [
                  TextField(
                    controller: regCon,
                    decoration: InputDecoration(
                      label: Text(
                        "Enter Registration Number",
                        style: TextStyle(color: Colors.black12),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12, width: 2.0),
                      ),
                      hintText: "SP20-BCS-000",
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    controller: nameCon,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      label: Text(
                        "Enter Student name",
                        style: TextStyle(color: Colors.black12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12, width: 2.0),
                      ),
                      hintText: "abc",
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    controller: phoneCon,
                    decoration: InputDecoration(
                      label: Text(
                        "Enter Phone Number",
                        style: TextStyle(color: Colors.black12),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12, width: 2.0),
                      ),
                      hintText: "030000000",
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    controller: emailCon,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      label: Text(
                        "Enter Email",
                        style: TextStyle(color: Colors.black12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12, width: 2.0),
                      ),
                      hintText: "example@gmail.com",
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () async {
                          Map<String, dynamic> row = {
                            DatabaseHelper.columnName: nameCon.text,
                            DatabaseHelper.columnReg: regCon.text,
                            DatabaseHelper.columnEmail: nameCon.text,
                            DatabaseHelper.columnGender:
                                _isMale == false ? "Male" : "Female",
                            DatabaseHelper.columnPhone: phoneCon.text,
                            DatabaseHelper.columnStatus: 1,
                          };
                          final id = await dbHelper.insert(row);
                          debugPrint('inserted row id: $id');
                        },
                        child: Text("Add Member"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.lightBlueAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          padding: EdgeInsets.all(15),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
