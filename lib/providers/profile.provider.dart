import 'package:projetflutter/API/profile.dart';
import 'package:projetflutter/providers/app.state.provider.dart';
import 'dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';


final testProfileProvider = FutureProvider<Profile?>((ref) async {
  final Dio dio =ref.read(dioProvider);
  var idPlayer = ref.watch(appStateProvider).idPlayer;
  try{
    final Response response = await dio.get('players/%23$idPlayer');
    return Profile.fromJson(response.data);
  }catch(e){
    return Future.error(e);
  }
});