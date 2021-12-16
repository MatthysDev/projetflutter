import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projetflutter/accueil.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Accueil(),
    );
  }
}
