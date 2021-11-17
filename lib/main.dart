import 'package:flutter/material.dart';
import 'package:projetflutter/routes/home/accueil.dart';

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

