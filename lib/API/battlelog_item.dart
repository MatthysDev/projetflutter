import 'package:json_annotation/json_annotation.dart';

import 'battlelog_event.dart';
import 'battlelog_battle.dart';

part 'battlelog_item.g.dart';

@JsonSerializable()
class BattlelogItem {
  BattlelogEvent? event;
  BattlelogBattle? battle;


     BattlelogItem({required this.event, required this.battle});

  factory BattlelogItem.fromJson(Map<String, dynamic> json) => _$BattlelogItemFromJson(json);

  Map<String, dynamic> toJson() => _$BattlelogItemToJson(this);

}