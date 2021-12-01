// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
      name: json['name'] as String?,
      tag: json['tag'] as String?,
      trophies: json['trophies'] as int?,
      highestTrophies: json['highestTrophies'] as int?,
      expLevel: json['expLevel'] as int?,
      brawlers: (json['brawlers'] as List<dynamic>?)
          ?.map((e) => Brawlers.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'tag': instance.tag,
      'name': instance.name,
      'trophies': instance.trophies,
      'highestTrophies': instance.highestTrophies,
      'expLevel': instance.expLevel,
      'brawlers': instance.brawlers,
    };
