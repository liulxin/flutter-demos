import 'package:flutterapp/model/common_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'grid_nav_item_model.g.dart';

@JsonSerializable()
class GridNavItemModel {
  final String startColor;
  final String endColor;
  final CommonModel mainItem;
  final CommonModel item1;
  final CommonModel item2;
  final CommonModel item3;
  final CommonModel item4;

  GridNavItemModel(
      {this.startColor,
      this.endColor,
      this.mainItem,
      this.item1,
      this.item2,
      this.item3,
      this.item4});

  factory GridNavItemModel.fromJson(Map<String, dynamic> json) =>
      _$GridNavItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$GridNavItemModelToJson(this);
}
