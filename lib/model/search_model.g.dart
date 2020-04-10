// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchModel _$SearchModelFromJson(Map<String, dynamic> json) {
  return SearchModel(
    data: (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : SearchItemModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    keyword: json['keyword'] as String,
  );
}

Map<String, dynamic> _$SearchModelToJson(SearchModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'keyword': instance.keyword,
    };
