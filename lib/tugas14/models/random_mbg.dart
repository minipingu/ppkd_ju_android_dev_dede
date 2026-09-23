// To parse this JSON data, do
//
//     final randomMbg = randomMbgFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';

import 'dart:convert';

part 'random_mbg.g.dart';

RandomMbg randomMbgFromJson(String str) => RandomMbg.fromJson(json.decode(str));

String randomMbgToJson(RandomMbg data) => json.encode(data.toJson());

@JsonSerializable()
class RandomMbg {
  @JsonKey(name: "meals")
  final List<Meal>? meals;

  RandomMbg({this.meals});

  factory RandomMbg.fromJson(Map<String, dynamic> json) =>
      _$RandomMbgFromJson(json);

  Map<String, dynamic> toJson() => _$RandomMbgToJson(this);
}

@JsonSerializable()
class Meal {
  @JsonKey(name: "strMeal")
  final String? strMeal;
  @JsonKey(name: "strMealThumb")
  final String? strMealThumb;
  @JsonKey(name: "idMeal")
  final String? idMeal;
  @JsonKey(name: "strArea")
  final String? strArea;
  @JsonKey(name: "strCountry")
  final String? strCountry;

  Meal({
    this.strMeal,
    this.strMealThumb,
    this.idMeal,
    this.strArea,
    this.strCountry,
  });

  factory Meal.fromJson(Map<String, dynamic> json) => _$MealFromJson(json);

  Map<String, dynamic> toJson() => _$MealToJson(this);
}
