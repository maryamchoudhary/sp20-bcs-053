import 'dart:convert';

import 'package:flutter/material.dart';
import 'apifile.dart' as util;
import 'package:http/http.dart' as http;
import 'dart:convert';

class Climate extends StatefulWidget {
  const Climate({Key? key}) : super(key: key);

  @override
  State<Climate> createState() => _ClimateState();
}

class _ClimateState extends State<Climate> {
  void showStuff() async{
    Map data = await getWeather(util.apiId, util.defaultCity);
    print(data.toString());
  }
  late String _cityEntered;
  Future _goToNextScreen(BuildContext context )async{
    Map results = await Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)
    {
      return new ChangeCity();
    }));
    if (results != null && results.containsKey('enter')){
      _cityEntered = results['enter'];
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClimateApp'),
        backgroundColor: Colors.black12,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              _goToNextScreen(context);
            },
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
        Container(
        width: 600,
        height: 1200.0,
        color: Colors.greenAccent,
        ),
          Container(
            alignment: Alignment.topRight,
            margin: EdgeInsets.fromLTRB(0.0, 10.9, 20.9, 0.0),
            child: Text(
                '${_cityEntered == null ? util.defaultCity : _cityEntered}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.9,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30.0, 190.0, 0.0, 0.0),
            child: updateTemWidget('${_cityEntered == null ? util.defaultCity : _cityEntered}'),
          ),
        ],
      ),
    );
  }
  Future <Map> getWeather(String appId, String city) async{
    String apiUrl= 'https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&appid={API key}';
    http.Response response = await http.get(apiUrl);
    return json.decode(response.body);
  }
  Widget updateTemWidget(String city) {
    return FutureBuilder(
      future: getWeather(util.apiId, city==null ? util.defaultCity: city),
      builder: (BuildContext context, AsyncSnapshot<Map> snapshot)
       {
        // we get all of the json data, we setup widget etc.
        if(snapshot.hasData){
          Map content = snapshot.requireData;
          return new Container(
    margin: const EdgeInsets.fromLTRB(30.0, 250.0, 0.0, 0.0),
    child: new Column(
    mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new ListTile(
          title: new Text(
          content['main']['temp'].toString()+"F",
          style: new TextStyle(
            fontStyle: FontStyle.normal,
            fontSize: 49.9,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          ),
          subtitle: new ListTile(
            title: new Text(
             "Humidity: ${content['main']['humidity'].toString()}\n"
                 "Min: ${content['main']['temp_min'].toString()}F\n"
                 "Max: ${content['main']['temp_max'].toString()}F",

            ),
          ),
        ),
      ],
    ),
          );

        }
    }
    );
  }
}
class ChangeCity extends StatelessWidget {
  var _cityFieldController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: new Text('Change City'),
        centerTitle: true,
      ),
      body: new Stack(
        children: [
          new Center(
            child: new Image.asset('images/white_snow.png'),
          ),
          new ListTile(
            title: new TextField(
              decoration: new InputDecoration(
                hintText: 'enter city',
              ),
              controller: _cityFieldController,
              keyboardType: TextInputType.text,
            ),
          ),
          new ListTile(
            title: new FloatingActionButton(
              onPressed: (){
                Navigator.pop(context,{'enter': _cityFieldController.text});
              },
            ),
          )
        ],
      ),
    );
  }
}

