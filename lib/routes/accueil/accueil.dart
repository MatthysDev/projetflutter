import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projetflutter/commun_widget/navbar.dart';
import 'package:projetflutter/commun_widget/navbotbar.dart';
import 'package:projetflutter/routes/accueil/tabs/battleLog.dart';
import 'package:projetflutter/routes/accueil/tabs/list_brawlers.dart';
import 'package:projetflutter/routes/accueil/tabs/player.dart';

class Accueil extends StatefulWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {

int selectedTab = 1;

List<Widget> bodies = [
  BattleLog(),
  ListBrawlers(),
  Player(),
];

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
          appBar:  Navbar(),
          backgroundColor: Color.fromRGBO(61, 75, 203, 1),
          body: bodies[selectedTab],
       bottomNavigationBar:  AppBottomNavigationBar(selected: selectedTab, onTap: _onPressed),),
    );
  }

  void _onPressed(int index) {
     setState(() {
       selectedTab = index;
     });
  }
}

  // List<Widget> _buildSquares(){
  //   final List<Widget> results = [];

  //   for(int i = 0; i<nbSquare.abs();i++){
  //     results.add(const Padding(
  //       padding: EdgeInsets.only(bottom: 8.0),
  //       child: MySquare(color: Colors.black),
  //       )

  //     );
  //   }
  //   return results;
  // }

  // body: Center(
        //   child: SingleChildScrollView(
        //   child: Column(
        //     children: _buildSquares(),
        //   ),),
        //   ),
        //   floatingActionButton: FloatingActionButton(
        //     child: Icon(Icons.perm_camera_mic, color: Colors.black26),onPressed: _onPressed
        //     )
