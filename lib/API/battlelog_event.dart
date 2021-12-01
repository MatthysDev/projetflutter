import 'package:json_annotation/json_annotation.dart';


part 'battlelog_event.g.dart';

@JsonSerializable()
class BattlelogEvent {
 String map;
     BattlelogEvent({required this.map});

  factory BattlelogEvent.fromJson(Map<String, dynamic> json) => _$BattlelogEventFromJson(json);

  Map<String, dynamic> toJson() => _$BattlelogEventToJson(this);

}