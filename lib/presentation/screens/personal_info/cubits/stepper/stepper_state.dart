// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'stepper_cubit.dart';

class StepperState {
  final int step;
  final List<bool> stepFlags;

  StepperState({
    this.step = 0,
    this.stepFlags = const [true, false, false],
  });

  StepperState copyWith({
    int? step,
    List<bool>? stepFlags,
  }) {
    return StepperState(
      step: step ?? this.step,
      stepFlags: stepFlags ?? this.stepFlags,
    );
  }
}
