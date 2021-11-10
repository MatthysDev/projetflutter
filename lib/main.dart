import 'package:flutter/material.dart';
import 'package:projetflutter/routes/home/ex1_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    return const MaterialApp(
    title: 'Flutter IUT',
    home: Ex1Route(),
    
    );
  }
}
