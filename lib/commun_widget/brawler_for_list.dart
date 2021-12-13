import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:projetflutter/API/player.dart';
import 'package:projetflutter/providers/dio.dart';
import 'package:dio/dio.dart';
import 'package:projetflutter/providers/profile.provider.dart';
import 'package:projetflutter/routes/accueil/tabs/list_brawlers.dart';
import 'brawler_list.dart';

// class BrawlerForList extends ConsumerWidget {
//   BrawlerForList({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {

//     return ref.watch(testProfileProvider).map(data: (data){
      
//     return ListBrawlers(brawlers: data.value!.brawlers!);
//     }, error: (error){
//       return Text('Error');
//     }, loading: (loading){
//       return Text('Loading');
//     });


    
//   }
// }