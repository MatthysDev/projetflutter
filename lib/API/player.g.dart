// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Player _$PlayerFromJson(Map<String, dynamic> json) => Player(
      name: json['name'] as String?,
      tag: json['tag'] as String?,
      brawler: json['brawler'] == null
          ? null
          : BattleBrawler.fromJson(json['brawler'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlayerToJson(Player instance) => <String, dynamic>{
      'name': instance.name,
      'tag': instance.tag,
      'brawler': instance.brawler,
    };
