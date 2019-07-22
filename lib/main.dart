import 'package:flutter/material.dart';

void main() =>  runApp(MyApp()); //only in onestatement


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('List'),
      ),
      body:Card(child:Column(children: <Widget>[
        
      ],),),
    ));
  }
}
