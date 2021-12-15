import 'package:json_annotation/json_annotation.dart';
import 'battle_brawler.dart';

part 'player.g.dart';

@JsonSerializable()
class Player {
  String? name;
 String? tag;
 BattleBrawler? brawler;
     
    Player({required this.name, required this.tag, required this.brawler});

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);

  Map<String, dynamic> toJson() => _$PlayerToJson(this);

}