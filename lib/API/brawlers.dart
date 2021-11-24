import 'package:json_annotation/json_annotation.dart';

part 'brawlers.g.dart';

@JsonSerializable()
class Brawlers {
  String? name;
  int? rank;
  int? power;
  int? highestTrophies;

  Brawlers({required this.name, required this.rank, required this.power, required this.highestTrophies});

  factory Brawlers.fromJson(Map<String, dynamic> json) => _$BrawlersFromJson(json);

  Map<String, dynamic> toJson() => _$BrawlersToJson(this);
}