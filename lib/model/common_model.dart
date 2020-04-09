import 'package:json_annotation/json_annotation.dart';

part 'common_model.g.dart';

@JsonSerializable()
class CommonModel {
  final String icon;
  final String title;
  final String url;
  final String statusBarColor;
  final bool hideAppBar;

  CommonModel(
      {this.icon, this.title, this.url, this.statusBarColor, this.hideAppBar});

  factory CommonModel.fromJson(Map<String, dynamic> json) =>
      _$CommonModelFromJson(json);

  Map<String, dynamic> toJson() => _$CommonModelToJson(this);
}
