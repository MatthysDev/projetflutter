// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'battlelog_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BattlelogItem _$BattlelogItemFromJson(Map<String, dynamic> json) =>
    BattlelogItem(
      event: json['event'] == null
          ? null
          : BattlelogEvent.fromJson(json['event'] as Map<String, dynamic>),
      battle: json['battle'] == null
          ? null
          : BattlelogBattle.fromJson(json['battle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BattlelogItemToJson(BattlelogItem instance) =>
    <String, dynamic>{
      'event': instance.event,
      'battle': instance.battle,
    };
