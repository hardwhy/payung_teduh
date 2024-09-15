import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:payung_teduh/domain/domain.dart';
import 'package:flutter/foundation.dart';

part 'wellness_state.dart';

extension WellnessCubitExt on BuildContext {
  WellnessCubit get wellnessCubit => read<WellnessCubit>();
}

@injectable
class WellnessCubit extends Cubit<WellnessState> {
  final WellnessRepository repository;

  WellnessCubit(this.repository) : super(const WellnessState());

  Future<void> loadWellness() async {
    // Set loading state to true
    emit(state.copyWith(isLoading: true));
    try {
      final wellnessList = await repository.getWellnessList();
      // Set the wellness list and stop loading
      emit(state.copyWith(
          isLoading: false,
          wellnessList: wellnessList
            ..sort((a, b) => a.name.compareTo(b.name))));
    } catch (e) {
      // Set error message and stop loading
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }

  Future<void> loadWellnessById(String id) async {
    // Set loading state to true
    emit(state.copyWith(isLoading: true));
    try {
      final wellness = await repository.getWellnessById(id);
      if (wellness != null) {
        // Set the wellness list with a single element and stop loading
        emit(state.copyWith(isLoading: false, wellnessList: [wellness]));
      } else {
        emit(state.copyWith(
            isLoading: false, errorMessage: 'Wellness not found'));
      }
    } catch (e) {
      // Set error message and stop loading
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }

  Future<void> generateData() async {
    await repository.generateDummyData();
    await loadWellness();
  }

  Future<void> clearData() async {
    await repository.clear();
    await loadWellness();
  }

  Future<void> sort({bool? isAsc}) async {
    final ascending = isAsc ?? !state.isAscending;
    List<Wellness> list = List<Wellness>.from(state.wellnessList);
    if (ascending) {
      list.sort((a, b) => a.name.compareTo(b.name));
    } else {
      list.sort((a, b) => b.name.compareTo(a.name));
    }

    emit(state.copyWith(isAscending: ascending, wellnessList: list));
  }
}
