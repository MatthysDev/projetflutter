import 'package:flutter/widgets.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget{
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(64);
}
