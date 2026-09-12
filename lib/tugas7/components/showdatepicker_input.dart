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
      initialDate: DateTime(2000),
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
          mainAxisAlignment: .center,
          children: [
            Text(
              selectedDate != null
                  ? 'Tanggal lahir : ${selectedDate!.day} ${listMonths[(selectedDate!.month) + 1]} ${selectedDate!.year}'
                  : 'Belum memilih tanggal',
              style: TextStyle(fontSize: 20),
            ),
            if (selectedDate != null)
              ButtonX(onTap: () => setState(() => selectedDate = null)),
          ],
        ),
        OutlinedButton(
          onPressed: _selectDate,
          child: const Text('Pilih Tanggal'),
        ),
      ],
    );
  }
}
