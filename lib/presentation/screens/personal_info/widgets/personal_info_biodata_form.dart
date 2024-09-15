import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:payung_teduh/presentation/themes/src/typography.dart';
import 'package:payung_teduh/presentation/widgets/widgets.dart';

class PersonalInfoBiodataForm extends StatelessWidget {
  const PersonalInfoBiodataForm({super.key});

  @override
  Widget build(BuildContext context) {
    final currentDay = DateTime.now();
    final initialSelectedDate = DateTime(
      2007,
      currentDay.month,
      currentDay.day,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: Column(
        children: [
          const TextInput(
            label: 'Fulname',
            isRequired: true,
          ),
          const SizedBox(height: 16),
          TextInput(
            label: 'Birthday',
            isRequired: true,
            readOnly: true,
            initialValue:
                DateFormat('dd MMMM yyyy').format(initialSelectedDate),
            onTap: () {
              return showDatePicker(
                context: context,
                initialDatePickerMode: DatePickerMode.day,
                initialDate: initialSelectedDate,
                firstDate: DateTime(1950, 01, 01),
                lastDate: initialSelectedDate,
              );
            },
            suffixWidget: const Icon(
              Icons.calendar_today_rounded,
              color: Colors.deepPurple,
            ),
          ),
          const SizedBox(height: 16),
          const DropdownField<String>(
            label: 'Gender',
            isRequired: true,
            values: [
              DropdownMenuItem(
                value: 'Male',
                child: Paragraph(
                  'Male',
                  color: Colors.black87,
                ),
              ),
              DropdownMenuItem(
                value: 'Female',
                child: Paragraph(
                  'Female',
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const TextInput(
            label: 'Email',
            isRequired: true,
            readOnly: true,
            initialValue: 'test@gmail.com',
          ),
          const SizedBox(height: 16),
          const TextInput(
            label: 'Phone',
            isRequired: true,
            keyboardType: TextInputType.phone,
          ),
          const SizedBox(height: 16),
          const DropdownField<String>(
            label: 'Education',
            isRequired: true,
            values: [
              DropdownMenuItem(
                value: 'Doctoral Degree',
                child: Paragraph(
                  'Doctoral Degree',
                  color: Colors.black87,
                ),
              ),
              DropdownMenuItem(
                value: 'Master Degree',
                child: Paragraph(
                  'Master Degree',
                  color: Colors.black87,
                ),
              ),
              DropdownMenuItem(
                value: 'Bachelor Degree',
                child: Paragraph(
                  'Bachelor Degree',
                  color: Colors.black87,
                ),
              ),
              DropdownMenuItem(
                value: 'High School',
                child: Paragraph(
                  'High School',
                  color: Colors.black87,
                ),
              ),
              DropdownMenuItem(
                value: 'Middle School',
                child: Paragraph(
                  'Middle School',
                  color: Colors.black87,
                ),
              ),
              DropdownMenuItem(
                value: 'Elementary School',
                child: Paragraph(
                  'Elementary School',
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const DropdownField<String>(
            label: 'Marital Status',
            isRequired: true,
            values: [
              DropdownMenuItem(
                value: 'Married',
                child: Paragraph(
                  'Married',
                  color: Colors.black87,
                ),
              ),
              DropdownMenuItem(
                value: 'Single',
                child: Paragraph(
                  'Single',
                  color: Colors.black87,
                ),
              ),
              DropdownMenuItem(
                value: 'Divorced',
                child: Paragraph(
                  'Divorced',
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          const SizedBox(height: kBottomNavigationBarHeight),
        ],
      ),
    );
  }
}
