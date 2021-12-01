import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BrawlerForList extends StatelessWidget {
  const BrawlerForList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.only(
      left: 15,
      top: 10,
      right: 20,
      bottom: 15,
    ),
    
    child : SizedBox(
      
       width: data.size.width/2.5,
      
        
      child: Column( 
        children:[ new Image.asset('assets/images/squeak.png'), Text('Squeak',style: TextStyle(fontFamily: 'Lilita',fontSize:20)),
    Text('200 🏆',style: TextStyle(fontFamily: 'Lilita')),
]
     
      )
     
    )
    );
  }
}