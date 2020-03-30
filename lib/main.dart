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
              width: 300.0,
              height: 300.0,
              color: Colors.lightGreen,
              child: new Image.network(
                'https://i0.hdslb.com/bfs/face/7a92729e9ab5f485f70858e42867e16c76b4a1e0.jpg@70w_70h_1c_100q.webp',
                fit: BoxFit.none,
                color: Colors.pink,
                colorBlendMode: BlendMode.darken,
                repeat: ImageRepeat.repeatX,
              ),
            ),
          )),
    );
  }
}
