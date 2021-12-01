import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projetflutter/accueil.dart';
import 'package:projetflutter/commun_widget/navbar.dart';
import 'package:projetflutter/commun_widget/submit.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Accueil(),
    );
  }
}
