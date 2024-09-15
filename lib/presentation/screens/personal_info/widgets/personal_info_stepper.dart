import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payung_teduh/presentation/screens/personal_info/cubits/stepper/stepper_cubit.dart';

class PersonalInfoStepper extends StatelessWidget {
  const PersonalInfoStepper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StepperCubit, StepperState>(
      builder: (context, state) {
        return SizedBox(
          height: 100,
          child: EasyStepper(
            enableStepTapping: true,
            activeStep: state.step,
            finishedStepTextColor: Colors.deepPurple,
            activeStepTextColor: Colors.deepPurple,
            unreachedStepTextColor: Colors.deepPurple[100],
            activeStepBorderType: BorderType.normal,
            borderThickness: 5,
            activeStepBorderColor: Colors.deepPurple,
            disableScroll: false,
            alignment: Alignment.center,
            unreachedStepBorderType: BorderType.normal,
            unreachedStepBorderColor: Colors.deepPurple[50],
            lineStyle: const LineStyle(
              lineThickness: 2,
              lineType: LineType.dashed,
              lineLength: 50,
            ),
            onStepReached: (index) {
              context.stepperCubit.to(index);
            },
            steps: [
              EasyStep(
                activeIcon: Icon(
                  Icons.person_outline_rounded,
                  color: Colors.deepPurple[100],
                ),
                enabled: state.stepFlags[0],
                customStep: Icon(
                  Icons.person_outline_rounded,
                  color: Colors.deepPurple[100],
                ),
                title: 'Biodata',
              ),
              EasyStep(
                activeIcon: Icon(
                  Icons.location_on_outlined,
                  color: Colors.deepPurple[100],
                ),
                enabled: state.stepFlags[1],
                customStep: Icon(
                  Icons.location_on_outlined,
                  color: Colors.deepPurple[100],
                ),
                title: 'Address',
              ),
              EasyStep(
                activeIcon: Icon(
                  Icons.apartment_outlined,
                  color: Colors.deepPurple[100],
                ),
                enabled: state.stepFlags[2],
                customStep: Icon(
                  Icons.apartment_outlined,
                  color: Colors.deepPurple[100],
                ),
                title: 'Company',
              )
            ],
          ),
        );
      },
    );
  }
}
