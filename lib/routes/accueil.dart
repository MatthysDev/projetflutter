import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projetflutter/commun_widget/navbar.dart';

class Accueil extends StatefulWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: Navbar(),

        //  bottomNavigationBar: const MyStatefulWidget(),
      ),
    );
  }

  // void _onPressed() {
  //   setState(() {
  //     nbSquare++;
  //   });

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
