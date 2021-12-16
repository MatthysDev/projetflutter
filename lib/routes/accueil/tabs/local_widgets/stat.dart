import 'package:flutter/widgets.dart';
import 'package:projetflutter/icons.dart';

class StatDart extends StatelessWidget {
  const StatDart({ Key? key, required this.side }) : super(key: key);

  final String side;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: Row(children: [
        side == 'left' ? const Icon(BrawlIcons.toolbox, size:64) : const Text('Test2'),
        side == 'left' ? const Text('Test2') : const Icon(BrawlIcons.toolbox, size:64),],));
        
  }
}