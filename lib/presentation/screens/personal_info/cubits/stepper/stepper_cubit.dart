import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'stepper_state.dart';

extension StepperCubitExt on BuildContext {
  StepperCubit get stepperCubit => read<StepperCubit>();
}

class StepperCubit extends Cubit<StepperState> {
  StepperCubit() : super(StepperState());

  void _changeStep(int stepChange) {
    final step = state.step + stepChange;
    final stepFlags = List<bool>.from(state.stepFlags);

    if (step < 0 || step >= stepFlags.length) return;

    stepFlags[step] = true;
    emit(state.copyWith(step: step, stepFlags: stepFlags));
  }

  void to(int step) {
    final enabledStep = state.stepFlags[step];
    if (enabledStep) {
      emit(state.copyWith(step: step));
    }
  }

  void next() => _changeStep(1);

  void previous() => _changeStep(-1);
}
