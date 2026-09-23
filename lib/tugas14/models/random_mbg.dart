// To parse this JSON data, do
//
//     final RandomMBG = RandomMBGFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';

import 'dart:convert';

part 'random_mbg.g.dart';

RandomMBG RandomMBGFromJson(String str) => RandomMBG.fromJson(json.decode(str));

String RandomMBGToJson(RandomMBG data) => json.encode(data.toJson());

@JsonSerializable()
class RandomMBG {
  final List<Meal>? meals;

  RandomMBG({this.meals});

  factory RandomMBG.fromJson(Map<String, dynamic> json) =>
      _$RandomMBGFromJson(json);

  Map<String, dynamic> toJson() => _$RandomMBGToJson(this);
}

@JsonSerializable()
class Meal {
  final String? idMeal;
  final String? strMeal;
  final String? strCategory;
  final String? strArea;
  final String? strInstructions;
  final String? strMealThumb;

  Meal({
    this.idMeal,
    this.strMeal,
    this.strCategory,
    this.strArea,
    this.strInstructions,
    this.strMealThumb,
  });

  factory Meal.fromJson(Map<String, dynamic> json) => _$MealFromJson(json);

  Map<String, dynamic> toJson() => _$MealToJson(this);
}
