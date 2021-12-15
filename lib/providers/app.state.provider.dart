import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppState{
  String idPlayer = "";
}

class AppStateNotifier extends StateNotifier<AppState>{
  AppStateNotifier() : super(AppState());

  void setPlayerId(String s) {
    final newState = AppState();
  newState.idPlayer = s;
    state = newState;
  }
}

final appStateProvider = StateNotifierProvider<AppStateNotifier, AppState>((ref) => AppStateNotifier());