// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brawlers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Brawlers _$BrawlersFromJson(Map<String, dynamic> json) => Brawlers(
      name: json['name'] as String?,
      rank: json['rank'] as int?,
      power: json['power'] as int?,
      highestTrophies: json['highestTrophies'] as int?,
      trophies: json['trophies'] as int?,
    );

Map<String, dynamic> _$BrawlersToJson(Brawlers instance) => <String, dynamic>{
      'name': instance.name,
      'rank': instance.rank,
      'power': instance.power,
      'trophies': instance.trophies,
      'highestTrophies': instance.highestTrophies,
    };
