import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BrawlerForList extends StatelessWidget {
  const BrawlerForList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return SizedBox(
       width: data.size.width/2,
        height: data.size.height/5,
      child: new Image.asset('assets/images/squeak.png'),
     
    );
  }
}