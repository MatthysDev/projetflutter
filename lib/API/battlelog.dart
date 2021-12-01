import 'package:json_annotation/json_annotation.dart';

import 'battlelog_item.dart';

part 'battlelog.g.dart';

@JsonSerializable()
class Battlelog {
  List<BattlelogItem> items;


   Battlelog({required this.items});

  factory Battlelog.fromJson(Map<String, dynamic> json) => _$BattlelogFromJson(json);

  Map<String, dynamic> toJson() => _$BattlelogToJson(this);
}