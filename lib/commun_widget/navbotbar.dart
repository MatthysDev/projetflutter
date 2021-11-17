import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppBottomNavigationBar extends StatelessWidget {
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
  }

}