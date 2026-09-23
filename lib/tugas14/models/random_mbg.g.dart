// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'random_mbg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RandomMbg _$RandomMbgFromJson(Map<String, dynamic> json) => RandomMbg(
  meals: (json['meals'] as List<dynamic>?)
      ?.map((e) => Meal.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$RandomMbgToJson(RandomMbg instance) => <String, dynamic>{
  'meals': instance.meals,
};

Meal _$MealFromJson(Map<String, dynamic> json) => Meal(
  strMeal: json['strMeal'] as String?,
  strMealThumb: json['strMealThumb'] as String?,
  idMeal: json['idMeal'] as String?,
  strArea: json['strArea'] as String?,
  strCountry: json['strCountry'] as String?,
);

Map<String, dynamic> _$MealToJson(Meal instance) => <String, dynamic>{
  'strMeal': instance.strMeal,
  'strMealThumb': instance.strMealThumb,
  'idMeal': instance.idMeal,
  'strArea': instance.strArea,
  'strCountry': instance.strCountry,
};
