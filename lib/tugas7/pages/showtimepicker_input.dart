import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/_components/divider_text_divider.dart';

class ShowTimePickerInput extends StatefulWidget {
  const new({super.key});

  @override
  State<ShowTimePickerInput> createState() => _ShowTimePickerInputState();
}

class _ShowTimePickerInputState extends State<ShowTimePickerInput> {
  TimeOfDay? selectedTime;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      children: [
        DividerTextDivider(title: 'Biar ga telat trus nyanyi'),
        ElevatedButton(
          child: Text(
            selectedTime == null
                ? 'Pilih Waktu'
                : 'Bangun pada jam ${selectedTime!.hour}:${selectedTime!.minute}',
            style: TextStyle(fontSize: 16),
          ),
          onPressed: () async {
            final TimeOfDay? time = await showTimePicker(
              context: context,
              initialTime: selectedTime ?? TimeOfDay.now(),
              builder: (BuildContext context, Widget? child) {
                return MediaQuery(
                  data: MediaQuery.of(context)
                      .copyWith(alwaysUse24HourFormat: true),
                  child: child!,
                );
              },
            );
            setState(() {
              selectedTime = time;
            });
          },
        ),
      ],
    );
  }
}
