import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payung_teduh/presentation/screens/personal_info/cubits/stepper/stepper_cubit.dart';
import 'package:payung_teduh/presentation/screens/personal_info/widgets/personal_info_address_form.dart';
import 'package:payung_teduh/presentation/screens/personal_info/widgets/personal_info_biodata_form.dart';
import 'package:payung_teduh/presentation/screens/personal_info/widgets/personal_info_company_form.dart';
import 'package:payung_teduh/presentation/screens/personal_info/widgets/personal_info_stepper.dart';
import 'package:payung_teduh/presentation/themes/themes.dart';
import 'package:payung_teduh/presentation/widgets/widgets.dart';

class PersonalInfoScreen extends StatefulWidget {
  const PersonalInfoScreen({super.key});

  @override
  State<PersonalInfoScreen> createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StepperCubit(),
      child: Scaffold(
        appBar: AppBar(
          leading: const Back(),
          title: const H2(
            'Personal Information',
            color: Colors.deepPurple,
          ),
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Flexible(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      const PersonalInfoStepper(),
                      BlocBuilder<StepperCubit, StepperState>(
                        builder: (context, state) {
                          return [
                            const PersonalInfoBiodataForm(),
                            const PersonalInfoAddressForm(),
                            const PersonalInfoCompanyForm()
                          ][state.step];
                        },
                      ),
                    ],
                  ),
                ),
              ),
              BlocBuilder<StepperCubit, StepperState>(
                builder: (context, state) {
                  return Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow: Shadows.elevation1(color: Colors.deepPurple),
                      color: Colors.deepPurple[50],
                    ),
                    padding: const EdgeInsets.fromLTRB(20, 16, 20, 20),
                    child: Row(
                      children: [
                        if (state.step > 0) ...[
                          Expanded(
                            child: Knob(
                              onTap: context.stepperCubit.previous,
                              title: 'Previous',
                              backgroundColor: Colors.white,
                              titleColor: Colors.deepPurple,
                            ),
                          ),
                          const SizedBox(width: 8),
                        ],
                        Expanded(
                          child: Knob(
                            onTap: context.stepperCubit.next,
                            title: state.step == 2 ? 'Save' : 'Next',
                          ),
                        ),
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
