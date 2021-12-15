import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:projetflutter/providers/dio.dart';

class Navbar extends ConsumerWidget implements PreferredSizeWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Dio dio = ref.read(dioProvider);
    final Future<Response> player = dio.get("players/%2320C2GLVCG");
    player.then((Response value) {
      print(value.statusCode);
    }).catchError((onError) {
      print(onError.toString());
    });
    return AppBar(
      toolbarHeight: 64,
      title: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/logo.png',
                width: 150,
                height: 150,
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
  Size get preferredSize => const Size.fromHeight(64);
}
