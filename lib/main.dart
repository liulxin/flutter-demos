import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Horizontal List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Parent(),
      ),
    );
  }
}

// 使用 Navigator 不能在根组件MaterialApp 中使用
class Parent extends StatelessWidget {
  final prods = List.generate(10, (index) => 'item $index');
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: prods.length,
        itemBuilder: (context, i) {
          return RaisedButton(
            color: Colors.lightGreen,
            child: Text('跳转 ${prods[i]}'),
            onPressed: () async {
              final res = await Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (context) => Child(pro: prods[i])),
              );
              Scaffold.of(context).showSnackBar(SnackBar(
                content: Text('$res'),
              ));
            },
          );
        });
  }
}

class Child extends StatelessWidget {
  final String pro;

  const Child({Key key, @required this.pro}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('detail'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('返回 $pro'),
          onPressed: () {
            Navigator.of(context).pop('15890185113-$pro');
          },
        ),
      ),
    );
  }
}
