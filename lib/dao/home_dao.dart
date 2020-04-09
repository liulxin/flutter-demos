import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutterapp/model/home_model.dart';

const HOME_URL = 'https://www.devio.org/io/flutter_app/json/home_page.json';

class HomeDao {
  static Future<HomeModel> fetch() async {
    var dio = Dio();
    Response response = await dio.get(HOME_URL);
    return HomeModel.fromJson(response.data);
  }
}
