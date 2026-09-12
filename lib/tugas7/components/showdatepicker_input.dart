import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede_nurhidayat/_components/button_x.dart';
import 'package:ppkd_ju_android_dev_dede_nurhidayat/_components/divider_text_divider.dart';
import 'package:ppkd_ju_android_dev_dede_nurhidayat/_components/months_list.dart';

class ShowDatePickerInput extends StatefulWidget {
  const ShowDatePickerInput({super.key});

  @override
  State<ShowDatePickerInput> createState() => _ShowDatePickerInputState();
}

class _ShowDatePickerInputState extends State<ShowDatePickerInput> {
  DateTime? selectedDate;

  Future<void> _selectDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate == null
          ? DateTime(2000)
          : DateTime(
              selectedDate!.year,
              selectedDate!.month,
              selectedDate!.day,
            ),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    setState(() {
      selectedDate = pickedDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: .min,
      spacing: 20,
      children: <Widget>[
        DividerTextDivider(title: 'Tanggal lahir'),
        Row(
          spacing: 6,
          mainAxisAlignment: .center,
          children: [
            ElevatedButton(
              onPressed: _selectDate,

              child: Text(
                selectedDate == null
                    ? 'Pilih Tanggal'
                    : 'Tanggal lahir : ${selectedDate!.day} ${listMonths[(selectedDate!.month) - 1]} ${selectedDate!.year}',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
