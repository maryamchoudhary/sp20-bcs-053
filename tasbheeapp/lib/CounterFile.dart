import 'package:flutter/material.dart';
import 'package:tasbheeapp/main.dart';
import 'CreateFile.dart';
import 'AllTasbeehFile.dart';


class CounterTasbeeh extends StatefulWidget {
  const CounterTasbeeh({Key? key, required String TasbeehText, required String TasbeehCount}) : super(key: key);

  @override
  State<CounterTasbeeh> createState() => _CounterTasbeehState();
}

class _CounterTasbeehState extends State<CounterTasbeeh> {
  int value=0;
  void increment()
  {
    setState(() {
      value++;
    });
  }
  void stop()
  {
    setState(() {
      value=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Tasbeeh'),
        backgroundColor: Colors.teal.shade700,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
        body: Column(
            children: [
              Row(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage()));
                        },
                        icon: Icon( // <-- Icon
                          Icons.home_filled,
                          size: 24.0,
                        ),
                        label: Text('Home'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal.shade800,
                        ),// <-- Text
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> CreateTasbeeh()));

                        },
                        icon: Icon( // <-- Icon
                          Icons.create,
                          size: 17.0,
                        ),
                        label: Text('Create'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal.shade800,
                        ),// <-- Text
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon( // <-- Icon
                          Icons.access_time,
                          size: 10.0,
                        ),
                        label: Text('Counter'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal.shade800,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> AllTasbeehFile()));
                        },
                        icon: Icon( // <-- Icon
                          Icons.all_inclusive_outlined,
                          size: 24.0,
                        ),
                        label: Text('All'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal.shade800,
                        ),// <-- Text
                      ),
                    ),
                  ],
              ),
            ],
        ),
    );
  }
}
