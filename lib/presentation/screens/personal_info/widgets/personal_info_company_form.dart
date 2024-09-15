import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:payung_teduh/presentation/themes/src/typography.dart';
import 'package:payung_teduh/presentation/widgets/widgets.dart';

class PersonalInfoCompanyForm extends StatelessWidget {
  const PersonalInfoCompanyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: Column(
        children: [
          TextInput(
            label: 'Company Name',
          ),
          SizedBox(height: 16),
          TextInput(
            label: 'Company Address',
          ),
          SizedBox(height: 16),
          DropdownField<String>(
            label: 'Position',
            values: [
              DropdownMenuItem(
                value: 'Manager',
                child: Paragraph(
                  'Manager',
                  color: Colors.black87,
                ),
              ),
              DropdownMenuItem(
                value: 'C Level',
                child: Paragraph(
                  'C Level',
                  color: Colors.black87,
                ),
              ),
              DropdownMenuItem(
                value: 'Staff',
                child: Paragraph(
                  'Staff',
                  color: Colors.black87,
                ),
              ),
              DropdownMenuItem(
                value: 'Others',
                child: Paragraph(
                  'Others',
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          DropdownField<String>(
            label: 'Work Duration',
            values: [
              DropdownMenuItem(
                value: 'lte_6_months',
                child: Paragraph(
                  '< 6 months',
                  color: Colors.black87,
                ),
              ),
              DropdownMenuItem(
                value: 'lte_1_year',
                child: Paragraph(
                  '6 - 12 months',
                  color: Colors.black87,
                ),
              ),
              DropdownMenuItem(
                value: 'lte_2',
                child: Paragraph(
                  '1 - 2 years',
                  color: Colors.black87,
                ),
              ),
              DropdownMenuItem(
                value: 'gt_2',
                child: Paragraph(
                  '2 years',
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          DropdownField<String>(
            label: 'Fund',
            values: [
              DropdownMenuItem(
                value: 'Salary',
                child: Paragraph(
                  'Salary',
                  color: Colors.black87,
                ),
              ),
              DropdownMenuItem(
                value: 'Business Profit',
                child: Paragraph(
                  'Business Profit',
                  color: Colors.black87,
                ),
              ),
              DropdownMenuItem(
                value: 'Savings Interest',
                child: Paragraph(
                  'Savings Interest',
                  color: Colors.black87,
                ),
              ),
              DropdownMenuItem(
                value: 'Inheritence',
                child: Paragraph(
                  'Inheritence',
                  color: Colors.black87,
                ),
              ),
              DropdownMenuItem(
                value: 'Parent/child funding',
                child: Paragraph(
                  'Parent/child funding',
                  color: Colors.black87,
                ),
              ),
              DropdownMenuItem(
                value: 'Raffle',
                child: Paragraph(
                  'Raffle',
                  color: Colors.black87,
                ),
              ),
              DropdownMenuItem(
                value: 'Investment Profit',
                child: Paragraph(
                  'Investment Profit',
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          DropdownField<String>(
            label: 'Income',
            values: [
              DropdownMenuItem(
                value: '< 10 Mio IDR',
                child: Paragraph(
                  '< 10 Mio IDR',
                  color: Colors.black87,
                ),
              ),
              DropdownMenuItem(
                value: '10 Mio - 50 Mio IDR',
                child: Paragraph(
                  '10 Mio - 50 Mio IDR',
                  color: Colors.black87,
                ),
              ),
              DropdownMenuItem(
                value: '50 Mio - 100 Mio IDR',
                child: Paragraph(
                  '50 Mio - 100 Mio IDR',
                  color: Colors.black87,
                ),
              ),
              DropdownMenuItem(
                value: '100 Mio - 500 Mio IDR',
                child: Paragraph(
                  '100 Mio - 500 Mio IDR',
                  color: Colors.black87,
                ),
              ),
              DropdownMenuItem(
                value: '500 Mio - 1 Bio IDR',
                child: Paragraph(
                  '500 Mio - 1 Bio IDR',
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          TextInput(
            label: 'Bank Branch',
          ),
          SizedBox(height: 16),
          TextInput(
            label: 'Account Number',
          ),
          SizedBox(height: 16),
          TextInput(
            label: 'Account\'s Holder',
          ),
          SizedBox(height: kBottomNavigationBarHeight),
        ],
      ),
    );
  }
}
