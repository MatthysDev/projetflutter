import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projetflutter/icons.dart';


class Player extends StatelessWidget {
  const Player({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Row(
        children:const [
          Text('data', style: TextStyle(fontFamily: 'Lilita')),
          Icon(BrawlIcons.broadsword, size:64),
          Icon(BrawlIcons.star, size:64),
          Icon(BrawlIcons.crownedHeart, size:64),
          Icon(BrawlIcons.toolbox, size:64),
          
        ]
      ),
    );

  }
}