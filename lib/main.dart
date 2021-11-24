import 'package:flutter/material.dart';
import 'package:projetflutter/accueil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Accueil(),
      title: 'BrawlStats',
    );
  }
}
// This is the stateful widget that the main application instantiates.
