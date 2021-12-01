// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'battle_brawler.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BattleBrawler _$BattleBrawlerFromJson(Map<String, dynamic> json) =>
    BattleBrawler(
      name: json['name'] as String?,
      id: json['id'] as int?,
      power: json['power'] as int?,
      trophies: json['trophies'] as int?,
    );

Map<String, dynamic> _$BattleBrawlerToJson(BattleBrawler instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'power': instance.power,
      'trophies': instance.trophies,
    };
