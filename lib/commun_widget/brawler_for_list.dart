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
        
        children:[ 
          
          new Image.asset('assets/images/squeak.png'),
          Container(

            color: const Color.fromRGBO(243, 200, 89,1),
            child:Column(
              
            children:[Text('Squeak',style: TextStyle(fontFamily: 'Lilita',fontSize:20,color: Color.fromRGBO(61, 75, 203,1))),
          Text('200 🏆',style: TextStyle(fontFamily: 'Lilita')),],)
          ),
          
]
     
      )
     
    )
    );
  }
}