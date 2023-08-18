import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


void main() => runApp(CounterApp());

class CounterApp extends StatefulWidget {
  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0;
  int _counterr = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('hi')));
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter App',
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://media.istockphoto.com/id/1146517111/photo/taj-mahal-mausoleum-in-agra.jpg?s=612x612&w=0&k=20&c=vcIjhwUrNyjoKbGbAQ5sOcEzDUgOfCsm9ySmJ8gNeRk="))),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('Counter App'),
            backgroundColor: Colors.purple,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$_counter',
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 40,),
                  // Text(
                  //   '$_counterr',
                  //   style: TextStyle(
                  //       color: Colors.blueAccent,
                  //       fontSize: 24,
                  //       fontWeight: FontWeight.bold),
                  // ),

                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    backgroundColor: Colors.purple,
                    onPressed: () {
                      setState(() {
                        _counter++;
                        Fluttertoast.showToast(
                            msg: "Increment",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER_LEFT,
                            timeInSecForIosWeb: 2,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      });
                    },
                    tooltip: 'Increment',
                    child: Icon(Icons.add),
                  ),
                  SizedBox(width: 20),
                  FloatingActionButton(
                    backgroundColor: Colors.purple,
                    onPressed: () {
                      setState(() {
                        _counter--;
                        Fluttertoast.showToast(
                            msg: "Decrement",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 2,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      });
                    },
                    tooltip: 'Decrement',
                    child: Icon(Icons.remove),
                  ),
                  SizedBox(width: 20),
                  FloatingActionButton(
                    backgroundColor: Colors.purple,
                    onPressed: () {
                      setState(() {
                        _counter = 0;
                        Fluttertoast.showToast(
                            msg: "Reset",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER_RIGHT,
                            timeInSecForIosWeb: 2,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      });
                    },
                    tooltip: 'Reset',
                    child: Icon(Icons.refresh),
                  ),
                ],
              ),

              //  SizedBox(height: 40,
              //  child:   FloatingActionButton(
              //       backgroundColor: Colors.purple,
              //       onPressed: () {
              //         setState(() {
              //           _counterr++;
              //           Fluttertoast.showToast(
              //               msg: "Increment",
              //               toastLength: Toast.LENGTH_SHORT,
              //               gravity: ToastGravity.CENTER_LEFT,
              //               timeInSecForIosWeb: 2,
              //               backgroundColor: Colors.red,
              //               textColor: Colors.white,
              //               fontSize: 16.0);
              //         });
              //       },
              //       tooltip: 'Equal',
              //       child: Icon(Icons.equalizer_rounded),
              //     ),

              //  ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     FloatingActionButton(
              //       backgroundColor: Colors.purple,
              //       onPressed: () {
              //         setState(() {
              //           _counterr++;
              //           Fluttertoast.showToast(
              //               msg: "Increment",
              //               toastLength: Toast.LENGTH_SHORT,
              //               gravity: ToastGravity.CENTER_LEFT,
              //               timeInSecForIosWeb: 2,
              //               backgroundColor: Colors.red,
              //               textColor: Colors.white,
              //               fontSize: 16.0);
              //         });
              //       },
              //       tooltip: 'Increment',
              //       child: Icon(Icons.add),
              //     ),

              //     SizedBox(width: 20),
              //     FloatingActionButton(
              //       backgroundColor: Colors.purple,
              //       onPressed: () {
              //         setState(() {
              //           _counterr--;
              //           Fluttertoast.showToast(
              //               msg: "Decrement",
              //               toastLength: Toast.LENGTH_SHORT,
              //               gravity: ToastGravity.CENTER,
              //               timeInSecForIosWeb: 2,
              //               backgroundColor: Colors.red,
              //               textColor: Colors.white,
              //               fontSize: 16.0);
              //         });
              //       },
              //       tooltip: 'Decrement',
              //       child: Icon(Icons.remove),
              //     ),
              //     SizedBox(width: 20),
              //     FloatingActionButton(
              //       backgroundColor: Colors.purple,
              //       onPressed: () {
              //         setState(() {
              //           _counterr = 0;
              //           Fluttertoast.showToast(
              //               msg: "Reset",
              //               toastLength: Toast.LENGTH_SHORT,
              //               gravity: ToastGravity.CENTER_RIGHT,
              //               timeInSecForIosWeb: 2,
              //               backgroundColor: Colors.red,
              //               textColor: Colors.white,
              //               fontSize: 16.0);
              //         });
              //       },
              //       tooltip: 'Reset',
              //       child: Icon(Icons.refresh),
              //     ),
              //   ],
              // )

            ],
          ),
        ),
      ),
    );
  }
}