// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'battlelog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Battlelog _$BattlelogFromJson(Map<String, dynamic> json) => Battlelog(
      items: (json['items'] as List<dynamic>)
          .map((e) => BattlelogItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BattlelogToJson(Battlelog instance) => <String, dynamic>{
      'items': instance.items,
    };
