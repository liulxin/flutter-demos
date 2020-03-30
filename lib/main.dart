import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Horizontal List';
    var stack = new Stack(
      alignment: const FractionalOffset(0.5, 0.8),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new NetworkImage(
            'http://i0.hdslb.com/bfs/face/6f7886981f8e8e9b3a86719568f6580786e0684d.jpg@52w_52h.webp',
          ),
          radius: 100.0,
        ),
        new Container(
          width: 100.0,
          height: 20.0,
          color: Colors.lightBlueAccent,
          child: new Text('this is flutter'),
        ),
        Positioned(child: new Text('this is flutter1'), top: 10.0, left: 20.0),
      ],
    );

    return new MaterialApp(
      title: title,
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text(title),
          ),
          body: new Center(
            child: stack,
          )),
    );
  }
}
