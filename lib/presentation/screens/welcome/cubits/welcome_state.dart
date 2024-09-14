// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'welcome_cubit.dart';

class WelcomeState {
  final bool? isInitial;
  WelcomeState({
    this.isInitial,
  });

  WelcomeState copyWith({
    bool? isInitial,
  }) {
    return WelcomeState(
      isInitial: isInitial ?? this.isInitial,
    );
  }
}
