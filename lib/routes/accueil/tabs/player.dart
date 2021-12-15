import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projetflutter/icons.dart';
import 'package:projetflutter/routes/accueil/tabs/local_widgets/stat.dart';


class Player extends StatelessWidget {
  const Player({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Wrap(
      children: [StatDart(side: 'left',),StatDart(side :'right'),StatDart(side: 'left'),StatDart(side: 'right')],
    );
  
  }
  
}