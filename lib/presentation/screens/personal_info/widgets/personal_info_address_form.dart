import 'package:flutter/material.dart';
import 'package:payung_teduh/presentation/themes/src/typography.dart';
import 'package:payung_teduh/presentation/widgets/widgets.dart';

class PersonalInfoAddressForm extends StatelessWidget {
  const PersonalInfoAddressForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Ripplify(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple[50],
                      borderRadius: BorderRadius.circular(16)),
                  onTap: () {},
                  child: const Column(
                    children: [
                      Icon(
                        Icons.camera_alt_outlined,
                        size: 30,
                        color: Colors.deepPurple,
                      ),
                      SizedBox(height: 4),
                      Caption.strong(
                        'Upload ID',
                        align: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8),
              const Expanded(
                flex: 2,
                child: TextInput(
                  label: 'ID Number',
                  isRequired: true,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const TextInput(
            label: 'ID Address',
            isRequired: true,
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
