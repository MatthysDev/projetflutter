import 'package:json_annotation/json_annotation.dart';

import 'brawlers.dart';

part 'profile.g.dart';

@JsonSerializable()
class Profile {
  String? tag;
  String? name;
  int? trophies;
  int? highestTrophies;
  int? expLevel;
  List<Brawlers>? brawlers;

   Profile({required this.name, required this.tag, required this.trophies, required this.highestTrophies, required this.expLevel, required this.brawlers});

  factory Profile.fromJson(Map<String, dynamic> json) => _$ProfileFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileToJson(this);


}