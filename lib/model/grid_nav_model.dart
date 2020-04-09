import 'package:flutterapp/model/grid_nav_item_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'grid_nav_model.g.dart';

@JsonSerializable()
class GridNavModel {
  final GridNavItemModel hotel;
  final GridNavItemModel flight;
  final GridNavItemModel travel;

  GridNavModel({this.hotel, this.flight, this.travel});

  factory GridNavModel.fromJson(Map<String, dynamic> json) =>
      _$GridNavModelFromJson(json);

  Map<String, dynamic> toJson() => _$GridNavModelToJson(this);
}
