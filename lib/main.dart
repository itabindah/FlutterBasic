import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculate',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Calculate Two Number'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

 
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController numb = new TextEditingController();
  TextEditingController numb2 = new TextEditingController();
   int num1, num2;
  var total;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextField(
              controller: numb,
              decoration: InputDecoration(
                icon: Icon(Icons.tablet),

              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            TextField(
              controller: numb2,
              decoration: InputDecoration(
                icon: Icon(Icons.confirmation_number),

              ),
            ),
            RaisedButton(onPressed: (){
              if (numb.text==""){
                print('wow');
              }
              else{
              num1 = int.parse(numb.text.toString());
              num2 = int.parse(numb2.text.toString());
                for(int i = 1; i<=num2;i++){
                  total=num1*i;
                  print("$num1 * $i = $total");
                }
              }
            },
            child: Text('Done'),
            ),
            TextField()
          ],
        )
    ));
  }
}
