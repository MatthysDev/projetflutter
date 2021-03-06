
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
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 30),
        child: SizedBox(
    
            width: taille.size.width,
            child: Column(children: [
              Padding(
      padding: const EdgeInsets.only(top: 10.0,bottom: 10),
      child: Text(profile.name,
                  style: const TextStyle(fontFamily: 'Lilita', fontSize: 30)),
    ),
    Image.asset('assets/images/COLT.png'),
              Padding(
      padding: const EdgeInsets.only(top: 10.0,bottom: 10),
      child: Text("Trophée : " + profile.trophies!.toString(),
                  style: const TextStyle(fontFamily: 'Lilita', fontSize: 30)),
    ),
              Padding(
      padding: const EdgeInsets.only(top: 10.0,bottom: 10),
      child: Text("Niveau : " + profile.expLevel!.toString(),
                  style: const TextStyle(fontFamily: 'Lilita', fontSize: 30)),
    ),
              Padding(
      padding: const EdgeInsets.only(top: 10.0,bottom: 10),
      child: Text("Victoires solo : " + profile.soloVictories!.toString(),
                  style: const TextStyle(fontFamily: 'Lilita', fontSize: 30)),
    ),
              Padding(
      padding: const EdgeInsets.only(top: 10.0,bottom: 10),
      child: Text("Victoires duo : " + profile.duoVictories!.toString(),
                  style: const TextStyle(fontFamily: 'Lilita', fontSize: 30)),
    ),
              
                  
              
        
              
              
              
            ]))));
  }
}
