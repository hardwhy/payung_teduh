import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payung_teduh/common/common.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'welcome_state.dart';

extension WelcomeCubitExt on BuildContext {
  WelcomeCubit get welcomeCubit => read<WelcomeCubit>();
}

class WelcomeCubit extends Cubit<WelcomeState> {
  WelcomeCubit() : super(WelcomeState());

  void getInitialAppInstalled() async {
    final preference = await SharedPreferences.getInstance();
    final isInitial = preference.getBool(PreferenceKeys.initialAppInstalled);
    emit(state.copyWith(isInitial: isInitial == null || isInitial));
  }

  void setHasInitiated() async {
    final preference = await SharedPreferences.getInstance();
    preference.setBool(PreferenceKeys.initialAppInstalled, false);

    emit(state.copyWith(isInitial: false));
  }
}
