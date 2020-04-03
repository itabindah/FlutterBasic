import 'package:flutter/material.dart';

class Calculateb extends StatefulWidget {
  @override
  _CalculatebState createState() => _CalculatebState();
}

class _CalculatebState extends State<Calculateb> {
  int num1,num2,total;
  double total1;
  TextEditingController texta = TextEditingController();
  TextEditingController textb = TextEditingController();
  TextEditingController textc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Calculate Two Numbers', style: TextStyle(fontSize: 36),),
            Row(
              children: <Widget>[
                  Padding(padding: EdgeInsets.all(20)),
                   Container(
             height: 50,
              width: 150,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.blue
                ) 
              ) ,
              child: TextField(
                controller: texta,
                decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter 1st Digit'
  ),
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.blue
                ) 
              ) ,
              child: TextField(
                controller: textb,
                decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter 2nd Digit'
  ),
              ),
            ),
              ],
            ),
             Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(5)),
             RaisedButton(onPressed: (){
               if(texta.text.toString() == "" && textb.text.toString() == ""){
                 print("field is empty");
               }
               else if(texta.text.toString() == ""){
                    num1 = 0;
                   num2 = int.parse(textb.text.toString());}
                 else if(textb.text.toString() == ""){
                   num1 = int.parse(texta.text.toString());
                   num2 = 0;
                 }
                  else{
                    num1 = int.parse(texta.text.toString());
                     num2 = int.parse(textb.text.toString());

               }

               total = num1 + num2;
               textc.text=total.toString();
               }
              ,
              child: Text('+'),
             ),
             Padding(padding: EdgeInsets.all(5)),
               RaisedButton(onPressed: (){
               if(texta.text.toString() == "" && textb.text.toString() == ""){
                 print("field is empty");
               }
               else if(texta.text.toString() == ""){
                    num1 = 0;
                   num2 = int.parse(textb.text.toString());}
                 else if(textb.text.toString() == ""){
                   num1 = int.parse(texta.text.toString());
                   num2 = 0;
                 }
                  else{
                    num1 = int.parse(texta.text.toString());
                     num2 = int.parse(textb.text.toString());

               }

               total = num1 - num2;
               textc.text=total.toString();
               }
              ,
              child: Text('-'),
             ),
              RaisedButton(onPressed: (){
               if(texta.text.toString() == "" && textb.text.toString() == ""){
                 print("field is empty");
               }
               else if(texta.text.toString() == ""){
                    num1 = 0;
                   num2 = int.parse(textb.text.toString());}
                 else if(textb.text.toString() == ""){
                   num1 = int.parse(texta.text.toString());
                   num2 = 0;
                 }
                  else{
                    num1 = int.parse(texta.text.toString());
                     num2 = int.parse(textb.text.toString());

               }

               total = num1 * num2;
               textc.text=total.toString();
               }
              ,
              child: Text('*'),
             ),
             RaisedButton(onPressed: (){
               if(texta.text.toString() == "" && textb.text.toString() == ""){
                 print("field is empty");
               }
               else if(texta.text.toString() == ""){
                    num1 = 0;
                   num2 = int.parse(textb.text.toString());}
                 else if(textb.text.toString() == ""){
                   num1 = int.parse(texta.text.toString());
                   num2 = 0;
                 }
                  else{
                    num1 = int.parse(texta.text.toString());
                     num2 = int.parse(textb.text.toString());

               }

               total1 = num1 / num2;
               textc.text=total1.toString();
               }
              ,
              child: Text('/'),
             ),
             
            ],
          ),
         
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.blue
                ) 
              ) ,
              child: TextField(
                keyboardType: TextInputType.number,
                controller: textc,
                decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Result'
  ),
                
              ),
            ),
            RaisedButton(onPressed: (){
              texta.clear();
              textb.clear();
              textc.clear();
            },
            child: Text('Clear'),)
         
          ],
        ),
      );
      
    
  }
}