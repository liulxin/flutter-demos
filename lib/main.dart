import 'package:flutter/material.dart';

void main() => runApp(
    new MyApp(items: new List<String>.generate(10, (i) => 'this is item $i')));

class MyApp extends StatelessWidget {
  final List<String> items;

  MyApp({Key key, @required this.items}) : super(key: key);

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
            height: 200.0,
//            child: MyList(),
            child: new ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return new ListTile(
                  title: new Text('${items[index]}'),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

//class MyList extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new ListView(
//      scrollDirection: Axis.horizontal,
//      children: <Widget>[
//        new Container(
//          width: 180.0,
//          color: Colors.lightGreen,
//        ),
//        new Container(
//          width: 180.0,
//          color: Colors.deepPurple,
//        ),
//        new Container(
//          width: 180.0,
//          color: Colors.amber,
//        )
//      ],
//    );
//  }
//}
