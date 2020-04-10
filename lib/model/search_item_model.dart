import 'package:json_annotation/json_annotation.dart';

part 'search_item_model.g.dart';

@JsonSerializable()
class SearchItemModel {
  final String code;
  final String word;
  final String type;
  final String price;
  final String star;
  final String zonename;
  final String districtname;
  final String url;

  SearchItemModel(
      {this.word,
      this.type = '',
      this.url = '',
      this.code = '',
      this.price,
      this.star,
      this.zonename = '',
      this.districtname = ''});

  factory SearchItemModel.fromJson(Map<String, dynamic> json) =>
      _$SearchItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$SearchItemModelToJson(this);
}
