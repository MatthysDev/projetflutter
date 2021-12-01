// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'battlelog_battle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BattlelogBattle _$BattlelogBattleFromJson(Map<String, dynamic> json) =>
    BattlelogBattle(
      type: json['type'] as String?,
      rank: json['rank'] as int?,
      trophyChange: json['trophyChange'] as int?,
      result: json['result'] as String?,
      players: (json['players'] as List<dynamic>)
          .map((e) => Player.fromJson(e as Map<String, dynamic>))
          .toList(),
      teams: (json['teams'] as List<dynamic>)
          .map((e) => (e as List<dynamic>)
              .map((e) => Player.fromJson(e as Map<String, dynamic>))
              .toList())
          .toList(),
    );

Map<String, dynamic> _$BattlelogBattleToJson(BattlelogBattle instance) =>
    <String, dynamic>{
      'type': instance.type,
      'rank': instance.rank,
      'trophyChange': instance.trophyChange,
      'result': instance.result,
      'players': instance.players,
      'teams': instance.teams,
    };
