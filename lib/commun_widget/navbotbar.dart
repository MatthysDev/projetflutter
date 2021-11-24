import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppBottomNavigationBar extends StatelessWidget {
<<<<<<< HEAD
  const AppBottomNavigationBar({Key? key, required this.selected, required this.onTap}) : super(key: key);
  
final int selected;
final Function(int) onTap;

  @override
  Widget build(BuildContext context) 
  {
    return BottomNavigationBar
      (
        onTap: onTap,
        currentIndex: selected,
        items:
         [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text("home")
            
          
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.settings),
            title: new Text("settings")
            
          
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.contact_mail),
            title: new Text("contact")
            
          
          )
        ]
    );
=======
  const AppBottomNavigationBar(
      {Key? key, required this.selected, required this.onTap})
      
      : super(key: key);
  
  final int selected;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar( backgroundColor: const Color.fromRGBO(243, 200, 89, 1), selectedItemColor: const Color.fromRGBO(255, 255, 255, 1),
  unselectedItemColor: const Color.fromRGBO(0, 0, 0, 1), onTap: onTap, currentIndex: selected, items: [
      BottomNavigationBarItem(
          icon: new Icon(Icons.list), title: new Text("BattleLog")),
      BottomNavigationBarItem(
          icon: new Icon(Icons.people_sharp), title: new Text("Brawlers")),
      BottomNavigationBarItem(
          icon: new Icon(Icons.search), title: new Text("ID"))
    ]);
>>>>>>> b7cb5a92cf4e2ae891cd59ee3e2d7db46a3c030e
  }
}