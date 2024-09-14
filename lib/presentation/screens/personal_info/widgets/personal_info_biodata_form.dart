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
            label: 'Province',
            isRequired: true,
            values: [
              DropdownMenuItem(
                value: 'Sumatera Utara',
                child: Paragraph(
                  'Sumatera Utara',
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const DropdownField<String>(
            label: 'City/Regency',
            isRequired: true,
            values: [
              DropdownMenuItem(
                value: 'Medan',
                child: Paragraph(
                  'Medan',
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const DropdownField<String>(
            label: 'District',
            isRequired: true,
            values: [
              DropdownMenuItem(
                value: 'Medan Selayang',
                child: Paragraph(
                  'Medan Selayang',
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const DropdownField<String>(
            label: 'Urban Village',
            isRequired: true,
            values: [
              DropdownMenuItem(
                value: 'Petisah Tengah',
                child: Paragraph(
                  'Petisah Tengah',
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const TextInput(
            label: 'Postal Code',
            isRequired: true,
          ),
          const SizedBox(height: kBottomNavigationBarHeight),
        ],
      ),
    );
  }
}
