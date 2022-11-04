import 'package:flutter/material.dart';
import 'constantfile.dart';
import 'containerfile.dart';
import 'input_page.dart';
class resultscreen extends StatelessWidget {
  resultscreen({required this.bmiResult, required this.interpretation, required this.ResultText,});
final String bmiResult;
final String ResultText;
final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
                  child: Center(
                      child: Text('Your Result', style:kTitleStyleS2,)
                  ),
              ),
          ),
          Expanded(
              flex: 5,
              child: RepeatContainerCode(
                onPressed: (){
                },
                  colors: activeColor,
                  cardWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(ResultText.toUpperCase(),style: ResultTextstyle,),
    Text(bmiResult,style: ResultStyle,),
    Text(interpretation,
    textAlign: TextAlign.center,
    style: BodyTextStyle,),
                      ],
                  ),
              ),
          ),
          Expanded(child:  GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> resultscreen(
                  bmiResult: bmiResult, interpretation: interpretation, ResultText: ResultText)));
            },
              child: Container(
                  child:
                  Center(
    child: Text('Re-Calculate',style: Labelstyle2,)),
    color: Color(0xFFEB1555),
    margin: EdgeInsets.only(top: 10),
    width: double.infinity,
    height: 50,
                  ),
              ),
          ),
          ],
      ),
    );
  }
}
