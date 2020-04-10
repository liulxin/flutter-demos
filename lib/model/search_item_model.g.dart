// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchItemModel _$SearchItemModelFromJson(Map<String, dynamic> json) {
  return SearchItemModel(
    word: json['word'] as String,
    type: json['type'] as String,
    url: json['url'] as String,
    code: json['code'] as String,
    price: json['price'] as String,
    star: json['star'] as String,
    zonename: json['zonename'] as String,
    districtname: json['districtname'] as String,
  );
}

Map<String, dynamic> _$SearchItemModelToJson(SearchItemModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'word': instance.word,
      'type': instance.type,
      'price': instance.price,
      'star': instance.star,
      'zonename': instance.zonename,
      'districtname': instance.districtname,
      'url': instance.url,
    };
