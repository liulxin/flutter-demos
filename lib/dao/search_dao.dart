import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutterapp/model/search_model.dart';

class SearchDao {
  static Future<SearchModel> fetch(String url, String text) async {
    var dio = Dio();
    Response response = await dio.get(url);
    SearchModel model = SearchModel.fromJson(response.data);
    model.keyword = text;
    return model;
  }
}
