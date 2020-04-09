import 'package:flutter/material.dart';
import 'package:flutterapp/model/common_model.dart';

class LocalNav extends StatelessWidget {
  final List<CommonModel> localNavList;

  const LocalNav({Key key, this.localNavList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(6),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: _items(context),
        ),
      ),
    );
  }

  _items(BuildContext context) {
    if (localNavList == null) {
      return null;
    }

    List<Widget> items = localNavList.map((model) {
      return GestureDetector(
        onTap: () {},
        child: Column(
          children: <Widget>[
            Image.network(
              model.icon,
              width: 32,
              height: 32,
            ),
            Text(
              model.title,
              style: TextStyle(
                fontSize: 12,
              ),
            )
          ],
        ),
      );
    }).toList();

    return items;
  }
}
