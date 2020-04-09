// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grid_nav_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GridNavModel _$GridNavModelFromJson(Map<String, dynamic> json) {
  return GridNavModel(
    hotel: json['hotel'] == null
        ? null
        : GridNavItemModel.fromJson(json['hotel'] as Map<String, dynamic>),
    flight: json['flight'] == null
        ? null
        : GridNavItemModel.fromJson(json['flight'] as Map<String, dynamic>),
    travel: json['travel'] == null
        ? null
        : GridNavItemModel.fromJson(json['travel'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GridNavModelToJson(GridNavModel instance) =>
    <String, dynamic>{
      'hotel': instance.hotel,
      'flight': instance.flight,
      'travel': instance.travel,
    };
