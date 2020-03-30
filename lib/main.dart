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
          child: Text('hello flutter hello flutter hello flutter hello flutter hello flutter hello flutter hello flutter',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.pink,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.dashed
          ),
          )
        )
      ),
    );
  }
}
