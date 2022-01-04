import 'package:projetflutter/API/brawlers.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:projetflutter/API/profile.dart';

class ProfilWidget extends ConsumerWidget {
  const ProfilWidget({Key? key, required this.profile}) : super(key: key);

  final Profile profile;

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
              Text(profile.name,
                  style: const TextStyle(fontFamily: 'Lilita', fontSize: 20)),
              Text(
                  null == profile.trophies ? "0" : profile.trophies!.toString(),
                  style: const TextStyle(fontFamily: 'Lilita', fontSize: 20)),
              Text("rank " + profile.soloVictories!.toString(),
                  style: const TextStyle(fontFamily: 'Lilita')),
              Text("power " + profile.duoVictories!.toString(),
                  style: const TextStyle(fontFamily: 'Lilita', fontSize: 10)),
            ])));
  }
}
