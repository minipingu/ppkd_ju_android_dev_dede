// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'random_mbg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RandomMbg _$RandomMbgFromJson(Map<String, dynamic> json) => RandomMbg(
  meals: (json['meals'] as List<dynamic>?)
      ?.map((e) => Map<String, String?>.from(e as Map))
      .toList(),
);

Map<String, dynamic> _$RandomMbgToJson(RandomMbg instance) => <String, dynamic>{
  'meals': instance.meals,
};
