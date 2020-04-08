import 'package:flutter/material.dart';

import 'navigator/tab_navigator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'flutter demo';

    return MaterialApp(
      title: title,
      home: TabNavigator(),
    );
  }
}
