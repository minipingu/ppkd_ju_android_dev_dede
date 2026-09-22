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
  final List<Map<String, String?>>? meals;

  RandomMbg({this.meals});

  factory RandomMbg.fromJson(Map<String, dynamic> json) =>
      _$RandomMbgFromJson(json);

  Map<String, dynamic> toJson() => _$RandomMbgToJson(this);
}
