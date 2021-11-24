import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [const Text('dza'), Image.asset('assets/logo.png')],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(64);
}
