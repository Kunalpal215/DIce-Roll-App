import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int dice1=Random().nextInt(6)+1;
  int dice2=Random().nextInt(6)+1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Roll the dice !'),
          centerTitle: true,
        ),
        body: SafeArea(
            child: Container(
              color: Colors.red,
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(image: AssetImage('images/face$dice1.png'),width: 150,),
                      Image(image: AssetImage('images/face$dice2.png'),width: 150,),
                    ],
                  ),
                  SizedBox(height: 70,),
                  TextButton(onPressed: (){
                    setState(() {
                      dice1=Random().nextInt(6)+1;
                      dice2=Random().nextInt(6)+1;
                    });
                  },
                    child: Text('Roll Dice',style: TextStyle(fontSize: 20,color: Colors.black),),
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.yellowAccent),
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 15,horizontal: 30))),
                  ),
                ],
              ),
            ),
        ),
      ),
    );
  }
}
