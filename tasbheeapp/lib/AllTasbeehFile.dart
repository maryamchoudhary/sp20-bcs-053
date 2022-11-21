import 'package:flutter/material.dart';
import 'package:tasbheeapp/main.dart';
import 'CreateFile.dart';
import 'CounterFile.dart';


class AllTasbeehFile extends StatefulWidget {
  const AllTasbeehFile({Key? key}) : super(key: key);

  @override
  State<AllTasbeehFile> createState() => _AllTasbeehFileState();
}

class _AllTasbeehFileState extends State<AllTasbeehFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Tasbeeh'),
        backgroundColor: Colors.teal.shade700,
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
        body: Column(
            children:[
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
                      ),
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
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> CounterTasbeeh(TasbeehText: '', TasbeehCount: '',)));
                      },
                      icon: Icon( // <-- Icon
                        Icons.access_time,
                        size: 10.0,
                      ),
                      label: Text('Counter'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.teal.shade800,
                      ),// <-- Text
                    ),
                  ),
                  Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon( // <-- Icon
                          Icons.all_inclusive_outlined,
                          size: 24.0,
                        ),
                        label: Text('All '),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal.shade800,
                        ),
                      ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text('سُـبْحانَ الله',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Divider(
                color: Colors.lime.shade700, //color of divider
                height: 5, //height spacing of divider
                thickness: 1, //thickness of divier line
                indent: 25, //spacing at the start of divider
                endIndent: 25, //spacing at the end of divider
              ),
              Text(' ٱلْحَمْدُ لِلَّٰهِ',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Divider(
                color: Colors.lime.shade700, //color of divider
                height: 5, //height spacing of divider
                thickness: 1, //thickness of divier line
                indent: 25, //spacing at the start of divider
                endIndent: 25, //spacing at the end of divider
              ),

              Text('الله أكبرِ',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Divider(
                color: Colors.lime.shade700, //color of divider
                height: 5, //height spacing of divider
                thickness: 1, //thickness of divier line
                indent: 25, //spacing at the start of divider
                endIndent: 25, //spacing at the end of divider
              ),
              Text('أَسْتَغْفِرُ اللّٰهَ',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Divider(
                color: Colors.lime.shade700, //color of divider
                height: 5, //height spacing of divider
                thickness: 1, //thickness of divier line
                indent: 25, //spacing at the start of divider
                endIndent: 25, //spacing at the end of divider
              ),
            ],
        ),
    );
  }
}
