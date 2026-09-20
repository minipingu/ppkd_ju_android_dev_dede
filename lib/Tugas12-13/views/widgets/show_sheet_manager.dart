import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/Tugas12-13/models/manager_model.dart';
import 'package:ppkd_ju_android_dev_dede/Tugas12-13/views/form_kopdes.dart';

typedef ShowSheetManager = void Function(
  BuildContext context,
  Function addUpdate, {
  bool? readonly,
  ManagerModel? manager,
});

class SheetManager {
  void showSheetManager(
    BuildContext context,
    Function addUpdate, {
    bool? readonly,
    ManagerModel? manager,
  }) {
    print('$manager');
    showModalBottomSheet(
      backgroundColor: const Color.fromARGB(255, 17, 17, 17),
      isScrollControlled: true,
      useSafeArea: true,
      context: context,
      builder: (context) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.viewInsetsOf(context).bottom,
        ),
        child: SingleChildScrollView(
          child: FormKopdes(
            onAdd: addUpdate,
            readonly: readonly,
            manager: manager,
          ),
        ),
      ),
    );
  }
}
