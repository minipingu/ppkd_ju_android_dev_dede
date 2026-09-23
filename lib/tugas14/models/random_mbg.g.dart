// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'random_mbg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RandomMBG _$RandomMBGFromJson(Map<String, dynamic> json) => RandomMBG(
  meals: (json['meals'] as List<dynamic>?)
      ?.map((e) => Meal.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$RandomMBGToJson(RandomMBG instance) => <String, dynamic>{
  'meals': instance.meals,
};

Meal _$MealFromJson(Map<String, dynamic> json) => Meal(
  idMeal: json['idMeal'] as String?,
  strMeal: json['strMeal'] as String?,
  strCategory: json['strCategory'] as String?,
  strArea: json['strArea'] as String?,
  strInstructions: json['strInstructions'] as String?,
  strMealThumb: json['strMealThumb'] as String?,
);

Map<String, dynamic> _$MealToJson(Meal instance) => <String, dynamic>{
  'idMeal': instance.idMeal,
  'strMeal': instance.strMeal,
  'strCategory': instance.strCategory,
  'strArea': instance.strArea,
  'strInstructions': instance.strInstructions,
  'strMealThumb': instance.strMealThumb,
};
