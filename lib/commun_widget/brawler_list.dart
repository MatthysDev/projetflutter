
import 'package:projetflutter/API/brawlers.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class BrawlerList extends ConsumerWidget {
  const BrawlerList({Key? key, required this.brawler}) : super(key: key);

  final Brawlers brawler;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final taille = MediaQuery.of(context);
    return Padding(
        padding: const EdgeInsets.only(
          left: 15,
          top: 10,
          right: 20,
          bottom: 15,
        ),
        child: SizedBox(
            width: taille.size.width / 2.5,
            child: Column(children: [
              Image.asset('assets/images/${brawler.name}.png'),
              Text(brawler.name!,
                  style: const TextStyle(fontFamily: 'Lilita', fontSize: 20)),
              Text(null == brawler.trophies ? "0" : brawler.trophies!.toString(),
                  style: const TextStyle(fontFamily: 'Lilita', fontSize: 20)),
              Text("rank " + brawler.rank!.toString(),
                  style: const TextStyle(fontFamily: 'Lilita')),
              Text("power " + brawler.power!.toString(),
                  style: const TextStyle(fontFamily: 'Lilita', fontSize: 10)),
            ])));
  }
}
