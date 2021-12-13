import 'package:projetflutter/API/profile.dart';
import 'dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';


final testProfileProvider = FutureProvider<Profile?>((ref) async {
  final Dio dio =ref.read(dioProvider);
  try{
    final Response response = await dio.get('players/%2320C2GLVCG');
    return Profile.fromJson(response.data);
  }catch(e){
    return Future.error(e);
  }
});