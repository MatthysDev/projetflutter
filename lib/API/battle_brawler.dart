
import 'package:json_annotation/json_annotation.dart';

part 'battle_brawler.g.dart';

@JsonSerializable()
class BattleBrawler {
  int? id;
  String? name;
  int? power;
  int? trophies;

     BattleBrawler({required this.name, required this.id, required this.power, required this.trophies});

  factory BattleBrawler.fromJson(Map<String, dynamic> json) => _$BattleBrawlerFromJson(json);

  Map<String, dynamic> toJson() => _$BattleBrawlerToJson(this);

}