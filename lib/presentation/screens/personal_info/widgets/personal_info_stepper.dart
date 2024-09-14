import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';

class PersonalInfoStepper extends StatelessWidget {
  const PersonalInfoStepper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: EasyStepper(
        activeStep: 0,
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
        steps: [
          EasyStep(
            activeIcon: Icon(
              Icons.person_outline_rounded,
              color: Colors.deepPurple[100],
            ),
            enabled: true,
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
            enabled: false,
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
            enabled: false,
            customStep: Icon(
              Icons.apartment_outlined,
              color: Colors.deepPurple[100],
            ),
            title: 'Company',
          )
        ],
      ),
    );
  }
}
