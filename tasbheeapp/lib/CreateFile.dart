import 'package:flutter/material.dart';
import 'package:tasbheeapp/main.dart';
import 'CounterFile.dart';
import 'AllTasbeehFile.dart';


class CreateTasbeeh extends StatefulWidget {
  const CreateTasbeeh({Key? key}) : super(key: key);

  @override
  State<CreateTasbeeh> createState() => _CreateTasbeehState();
}

class _CreateTasbeehState extends State<CreateTasbeeh> {
  TextEditingController TextController = TextEditingController();
  TextEditingController CountingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Tasbeeh'),
        backgroundColor: Colors.teal.shade700,
        automaticallyImplyLeading: false,
        centerTitle: true,
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
                          ),
                        ),
                    ),
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {},
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const CounterTasbeeh (TasbeehText: ' ', TasbeehCount: '',)));
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
              SizedBox(
                height: 50,
              ),
              Column (
                  children: [
                    Padding (
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                        child: TextFormField(
                            controller: TextController,
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Enter name of Tasbeeh',
                            ),
                        ),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                        child: TextFormField(
                            controller: CountingController,
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Enter number of count for Tasbeeh',
                            ),
                        ),
                    ),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CounterTasbeeh(
                                TasbeehText: TextController.text,
                                TasbeehCount: CountingController.text,
                              ),
                            ));
                      },
                      child: Text('Create'),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.lime.shade900,
                            fixedSize: const Size(150, 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),
                        ),
                    ),
                  ],
              ),
            ],
        ),
    );
  }
}

