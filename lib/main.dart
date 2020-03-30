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
        body: new Row(
          children: <Widget>[
            Expanded(
              child: new RaisedButton(
                onPressed: () {},
                color: Colors.amber,
                child: new Text('button'),
              ),
            ),
            new RaisedButton(
              onPressed: () {},
              color: Colors.blue,
              child: new Text('button'),
            ),
            new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new RaisedButton(
                  onPressed: () {},
                  color: Colors.red,
                  child: new Text('button'),
                ),
                new RaisedButton(
                  onPressed: () {},
                  color: Colors.pink,
                  child: new Text('button'),
                ),
                new RaisedButton(
                  onPressed: () {},
                  color: Colors.lightBlueAccent,
                  child: new Text('button'),
                )
              ],
            ),
            Expanded(
              child: new RaisedButton(
                onPressed: () {},
                color: Colors.lightGreen,
                child: new Text('button'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
