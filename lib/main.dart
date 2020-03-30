import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Horizontal List';

    return new MaterialApp(
      title: title,
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text(title),
          ),
          body: new Center(
              child: new Container(
            width: double.infinity,
            height: 180.0,
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.fromLTRB(16.0, 10.0, 0.0, 2.0),
            child: new Text(
              'hello container',
              style: TextStyle(fontSize: 14.0, color: Colors.pink),
              textAlign: TextAlign.center,
            ),
            alignment: Alignment.topLeft,
//                color: Colors.lightGreenAccent,
            decoration: new BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.lightGreen, Colors.pink],
                ),
                border: Border.all(width: 2.0, color: Colors.deepPurple)),
          ))),
    );
  }
}
