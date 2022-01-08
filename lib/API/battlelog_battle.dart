import 'package:json_annotation/json_annotation.dart';
import 'package:projetflutter/API/player.dart';

part 'battlelog_battle.g.dart';

@JsonSerializable()
class BattlelogBattle {
  String? type;
  int? rank;
  int ?trophyChange;
  String? result;
  List<Player> players;
  List<List<Player>> teams;
  



     BattlelogBattle({required this.type, required this.rank, required this.trophyChange ,required this.result, required this.players, required this.teams });

  factory BattlelogBattle.fromJson(Map<String, dynamic> json) => _$BattlelogBattleFromJson(json);

  Map<String, dynamic> toJson() => _$BattlelogBattleToJson(this);

}