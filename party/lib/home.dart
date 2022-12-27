import 'package:flutter/material.dart';
import 'package:party/add_students.dart';

import 'database.dart';

final dbHelper = DatabaseHelper();

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Student'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: FutureBuilder<List<Map<String, dynamic>>>(
          future: dbHelper.mydb().then((db) => dbHelper.queryAllRows()),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Map<String, dynamic>>? rows = snapshot.data;
              return ListView.builder(
                itemCount: rows?.length,
                itemBuilder: (context, index) {
                  Map<String, dynamic> list = rows![index];
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 190,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        children: [
                          Flexible(
                            flex: 5,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 15, right: 15),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Registration Number",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Spacer(),
                                      Text(
                                        list['reg'],
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 15, right: 15),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Student Name",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Spacer(),
                                      Text(
                                        list['name'],
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 15, right: 15),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Phone number",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Spacer(),
                                      Text(
                                        list['phone'],
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 15, right: 15),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Email",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Spacer(),
                                      Text(
                                        list['email'],
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () async {
                                    final id = await dbHelper.queryRowCount();

                                    await showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: Text('Are you sure?'),
                                            actions: [
                                              TextButton(
                                                onPressed: () async {
                                                  final rowsDeleted =
                                                      await dbHelper.delete(id);
                                                  setState(() {
                                                    Home();
                                                  });
                                                  Navigator.pop(context);
                                                },
                                                child: Text(
                                                  'Yes',
                                                  style: TextStyle(
                                                      color: Colors.redAccent),
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text(
                                                  'No',
                                                  style: TextStyle(
                                                      color: Colors.blueGrey),
                                                ),
                                              ),
                                            ],
                                          );
                                        });
                                  },
                                  child: Icon(
                                    Icons.delete,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () async {
                                    TextEditingController regno =
                                        TextEditingController(
                                            text: list['reg']);
                                    TextEditingController name =
                                        TextEditingController(
                                            text: list['name']);

                                    TextEditingController email =
                                        TextEditingController(
                                            text: list['email']);
                                    TextEditingController phone =
                                        TextEditingController(
                                            text: list['phone']);
                                    await showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: Center(
                                              child: Text('Update Member')),
                                          content: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              TextField(
                                                controller: regno,
                                                decoration: InputDecoration(
                                                    prefixText: "RegNo: "),
                                              ),
                                              TextField(
                                                controller: name,
                                                decoration: InputDecoration(
                                                    prefixText: "Name: "),
                                              ),
                                              TextField(
                                                controller: email,
                                                decoration: InputDecoration(
                                                    prefixText: "Email: "),
                                              ),
                                              TextField(
                                                controller: phone,
                                                decoration: InputDecoration(
                                                    prefixText:
                                                        "Phone Number : "),
                                              ),
                                            ],
                                          ),
                                          actions: [
                                            TextButton(
                                              onPressed: () async {
                                                if (regno.text.isNotEmpty &&
                                                    name.text.isNotEmpty &&
                                                    email.text.isNotEmpty &&
                                                    phone.text.isNotEmpty) {
                                                  Map<String, dynamic> row = {
                                                    DatabaseHelper.columnId:
                                                        list['_id'],
                                                    DatabaseHelper.columnName:
                                                        name.text,
                                                    DatabaseHelper.columnReg:
                                                        regno.text,
                                                    DatabaseHelper.columnEmail:
                                                        email.text,
                                                    DatabaseHelper.columnGender:
                                                        list['gender'],
                                                    DatabaseHelper.columnPhone:
                                                        phone.text,
                                                    DatabaseHelper.columnStatus:
                                                        list['status'],
                                                  };
                                                  final rowsAffected =
                                                      await dbHelper
                                                          .update(row);
                                                  setState(() {
                                                    Home();
                                                  });
                                                  Navigator.of(context).pop();
                                                }
                                              },
                                              child: Text(
                                                'Update',
                                                style: TextStyle(
                                                    color: Colors.blueGrey),
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Text(
                                                'Cancel',
                                                style: TextStyle(
                                                    color: Colors.teal),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  icon: Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                  ),
                                ),
                                InkWell(
                                  onTap: list['status'] == 1
                                      ? () async {
                                          Map<String, dynamic> row = {
                                            DatabaseHelper.columnId:
                                                list['_id'],
                                            DatabaseHelper.columnName:
                                                list['name'],
                                            DatabaseHelper.columnReg:
                                                list['reg'],
                                            DatabaseHelper.columnEmail:
                                                list['email'],
                                            DatabaseHelper.columnGender:
                                                list['gender'],
                                            DatabaseHelper.columnPhone:
                                                list['phone'],
                                            DatabaseHelper.columnStatus: 0,
                                          };
                                          final rowsAffected =
                                              await dbHelper.update(row);
                                          print(rowsAffected);
                                          setState(() {
                                            Home();
                                          });
                                        }
                                      : () {},
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        color: list['status'] == 1
                                            ? Colors.blue
                                            : Colors.black54,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Text(
                                        list['status'] == 1 ? "Unpaid" : "Paid",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                  // return ListTile(
                  //   title: Text(list['phone']),
                  //   subtitle: Text(list['reg'].toString()),
                  // );
                },
              );
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddStudents()),
          );
        },
        child: Icon(
          Icons.add,
          size: 40,
          color: Colors.white,
        ),
      ),
    );
  }
}
