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
            child: new Card(
              color: Color.fromARGB(6, 55, 44, 20),
              child: new Column(
                children: <Widget>[
                  new ListTile(
                    leading: new Icon(Icons.phone),
                    title: new Text('电话'),
                  ),
                  new Divider(),
                  new ListTile(
                    leading: new Icon(Icons.add),
                    title: new Text('添加'),
                  ),
                  new Divider(),
                  new ListTile(
                    leading: new Icon(Icons.remove),
                    title: new Text('移除'),
                  ),
                  new Divider(),
                  new ListTile(
                    leading: new Icon(Icons.train),
                    title: new Text('行程'),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
