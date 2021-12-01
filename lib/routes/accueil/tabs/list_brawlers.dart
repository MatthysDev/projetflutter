
import 'package:flutter/widgets.dart';
import 'package:projetflutter/commun_widget/brawler_for_list.dart';

class ListBrawlers extends StatelessWidget {
  const ListBrawlers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
print('Test');
    return Wrap(children: [BrawlerForList(),BrawlerForList(),BrawlerForList(),],);

  }
}