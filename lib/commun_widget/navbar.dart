import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:projetflutter/providers/dio.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return AppBar(
      
      toolbarHeight: 128,
      title: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/logo.png',
                width: 250,
                height: 250,
              ),
              const Text('BrawlStats'),
            ],
          ),
          // Container(
          //   color: Colors.yellow,
          //   height: 10,
          //   width: 128,
          // )
        ],
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(128);
}
