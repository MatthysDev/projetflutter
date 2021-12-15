import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:projetflutter/API/brawlers.dart';
import 'package:projetflutter/API/profile.dart';
import 'package:projetflutter/commun_widget/brawler_for_list.dart';
import 'package:projetflutter/providers/profile.provider.dart';
import '../../../commun_widget/brawler_list.dart';

class ListBrawlers extends ConsumerWidget {
  const ListBrawlers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(testProfileProvider).map(
        data: _onData,
        error: (error) {
          return Text("bite");
        },
        loading: (loading) {
          return Text("yoloading");
        });
  }

  Widget _onData(AsyncData<Profile?> data) {
    final List<Widget> elements = [];

    if (null != data.value!.brawlers) {
      for (Brawlers b in data.value!.brawlers!) {
        elements.add(BrawlerList(brawler: b));
      }
    }
    return SingleChildScrollView(child: Wrap(children: elements));
  }
}
