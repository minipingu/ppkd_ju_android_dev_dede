import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/_components/app_scaffold.dart';
import 'package:ppkd_ju_android_dev_dede/_components/months_list.dart';

class ShowDatePickerInputWidget extends StatefulWidget {
  const ShowDatePickerInputWidget({super.key});

  @override
  State<ShowDatePickerInputWidget> createState() =>
      _ShowDatePickerInputWidgetState();
}

class _ShowDatePickerInputWidgetState extends State<ShowDatePickerInputWidget> {
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
