import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projetflutter/my_square.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('MyApp'),
      ),
      body:Center(
        child: Container(
        color: Colors.red,
        height:200,
        width :200,
        child: Center(child: Container(height: 100, width: 100, color: Colors.yellow,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2,),
            child: GestureDetector(
              child : const MySquare(color: .blue, child : Text('GO'),),
              onTap: _go,,
            ),
        ),)),),


      ),
    );
    
  }
  void _go(){
      Navigator.pushNamed(context, squares)
    }
}