import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projetflutter/commun_widget/navbar.dart';
import 'package:projetflutter/commun_widget/navbotbar.dart';
import 'package:projetflutter/routes/accueil/tabs/details_profile.dart';
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
    const DetailsProfile(),
    const ListBrawlers(),
    const Player(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const Navbar(),
        backgroundColor: const Color.fromRGBO(61, 75, 203, 1),
        body: bodies[selectedTab],
        bottomNavigationBar:
            AppBottomNavigationBar(selected: selectedTab, onTap: _onPressed),
      ),
    );
  }

  void _onPressed(int index) {
    setState(() {
      selectedTab = index;
    });
  }
}