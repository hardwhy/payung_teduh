import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'stepper_state.dart';

extension StepperCubitExt on BuildContext {
  StepperCubit get stepperCubit => read<StepperCubit>();
}

class StepperCubit extends Cubit<StepperState> {
  StepperCubit() : super(StepperState());

  void changeStep(int stepChange) {
    final step = state.step + stepChange;
    final stepFlags = List<bool>.from(state.stepFlags);

    if (step < 0 || step >= stepFlags.length) return;

    stepFlags[step] = true;
    emit(state.copyWith(step: step, stepFlags: stepFlags));
  }

  void next() => changeStep(1);

  void previous() => changeStep(-1);
}
