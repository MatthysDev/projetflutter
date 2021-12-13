import 'dart:convert';

import 'brawler_for_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:projetflutter/API/player.dart';
import 'package:projetflutter/providers/dio.dart';
import 'package:dio/dio.dart';
import 'package:projetflutter/providers/profile.provider.dart';


class BrawlerList extends ConsumerWidget {
  BrawlerList({ Key? key, required this.brawler }) : super(key: key);

  final brawler;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final taille = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.only(
      left: 15,
      top: 10,
      right: 20,
      bottom: 15,
    ),
    
    child : SizedBox(
      
       width: taille.size.width/2.5,
      
        
      child: Column( 
        children:[ new Image.asset('assets/images/squeak.png'), Text('Squeak',style: TextStyle(fontFamily: 'Lilita',fontSize:20)),
    Text(brawler.name!,style: TextStyle(fontFamily: 'Lilita')), 
] 
     
      )
     
    )
    );
    
  }
}