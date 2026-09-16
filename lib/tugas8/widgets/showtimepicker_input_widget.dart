import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/_components/app_scaffold.dart';

class ShowTimePickerInputWidget extends StatefulWidget {
  const new({super.key});

  @override
  State<ShowTimePickerInputWidget> createState() =>
      _ShowTimePickerInputWidgetState();
}

class _ShowTimePickerInputWidgetState extends State<ShowTimePickerInputWidget> {
  TimeOfDay? selectedTime;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      children: [
        Center(
          child: ElevatedButton(
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
        ),
      ],
    );
  }
}
