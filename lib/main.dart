import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = 'Web Images';

    return new MaterialApp(
      title: title,
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text(title),
          ),
          body: new Column(
            children: <Widget>[
              // 静态图
              new Image.network('https://static.web.sdo.com/gmys/20190219_web/g.png'),
              // gif
              new Image.network('https://static.web.sdo.com/jijiamobile/pic/gmysweb6/pc/play.gif'),
              // 占位符淡入图片
              new FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: 'https://static.web.sdo.com/gmys/20190219_web/g.png',
              ),
              // 缓存图片
              new CachedNetworkImage(
                  imageUrl: 'https://static.web.sdo.com/gmys/20190219_web/g.png',
                  placeholder: (context, url) => new CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error)
              ),
            ],
          )),
    );
  }
}
