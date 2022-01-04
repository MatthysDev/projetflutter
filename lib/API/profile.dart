import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

import 'brawlers.dart';
import 'club.dart';

part 'profile.g.dart';

@JsonSerializable()
class Profile {
  String? tag;
  String name;
  int? trophies;
  int? highestTrophies;
  int? expLevel;
  int? soloVictories;
  int? duoVictories;
  Club? club;
  List<Brawlers>? brawlers;


  Profile(
      {required this.name,
      required this.tag,
      required this.trophies,
      required this.highestTrophies,
      required this.expLevel,
      required this.brawlers,
      required this.duoVictories,
      required this.soloVictories,});

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
