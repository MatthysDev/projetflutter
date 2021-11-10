import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:projetflutter/my_square.dart';

class Ex1Route extends StatefulWidget {
  const Ex1Route({Key? key}) : super(key: key);

  @override
  State<Ex1Route> createState() => _Ex1RouteState();
}

class _Ex1RouteState extends State<Ex1Route> {

  int nbSquare = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Squares : $nbSquare'),
      ),
        body: Center(
          child: SingleChildScrollView(
          child: Column(
            children: _buildSquares(),
          ),),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.perm_camera_mic, color: Colors.black26),onPressed: _onPressed
            )
    );
  }

  void _onPressed() {
    setState(() {
      nbSquare++;
    });
    
  }

  List<Widget> _buildSquares(){
    final List<Widget> results = [];

    for(int i = 0; i<nbSquare.abs();i++){
      results.add(const Padding(
        padding: EdgeInsets.only(bottom: 8.0),
        child: MySquare(color: Colors.black),
        )

      );
    }
    return results;
  }
}