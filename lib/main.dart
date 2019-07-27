import 'package:flutter/material.dart';

void main() => runApp(MyApp()); //only in onestatement

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ['food tester'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('List'),
            ),
            body: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                         _products.add('advanced food');
                      
                      });
                     
                    },
                    child: Text('Add product'),
                  ),
                ),
                Column(
                  children: _products
                      .map((element) => Card(
                            child: Column(
                              children: <Widget>[
                                Image.asset('assets/food.jpg'),
                                Text(element)
                              ],
                            ),
                          ))
                      .toList(),
                ),
              ],
            )));
  }
}
