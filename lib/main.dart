import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:projetflutter/accueil.dart';
=======
import 'package:projetflutter/routes/accueil/accueil.dart';
>>>>>>> b7cb5a92cf4e2ae891cd59ee3e2d7db46a3c030e

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'BrawlStats',
      
      home: Accueil(),
    );
  }
}
// This is the stateful widget that the main application instantiates.

