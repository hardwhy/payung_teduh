import 'package:flutter/material.dart';
import 'package:payung_teduh/presentation/screens/personal_info/widgets/personal_info_biodata_form.dart';
import 'package:payung_teduh/presentation/screens/personal_info/widgets/personal_info_stepper.dart';
import 'package:payung_teduh/presentation/themes/src/typography.dart';
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
    return Scaffold(
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
            const Flexible(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    PersonalInfoStepper(),
                    PersonalInfoBiodataForm(),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: Shadows.elevation2(color: Colors.black),
                color: Colors.white,
              ),
              padding: const EdgeInsets.fromLTRB(20, 16, 20, 20),
              child: Knob(
                onTap: () {},
                title: 'Next',
              ),
            )
          ],
        ),
      ),
    );
  }
}
