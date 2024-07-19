import 'package:deedsuser/utils/constant.dart';
import 'package:deedsuser/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:date_time_picker/date_time_picker.dart';

class GDateTimeController extends GetxController {
  final selectedStartDate = "از تاریخ".obs;
  final selectedEndDate = "تا تاریخ".obs;
}

class MyTextFormFilterFieldDateTime extends StatelessWidget {
  final String labelTitle;
  final String hintTitle;
  final String errorTitle;
  final String validation;
  final TextEditingController dateTimeController;
  final bool secureText;

  const MyTextFormFilterFieldDateTime({
    super.key,
    required this.labelTitle,
    required this.hintTitle,
    required this.validation,
    this.errorTitle = "",
    this.secureText = false,
    required this.dateTimeController,
  });

  void _selectDate(BuildContext context) async {
    GDateTimeController _dateTimeController = Get.put(GDateTimeController());
    String pickedDate = '';

    DateTimePicker(
      initialValue: DateTime.now().toString(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      dateLabelText: 'Date',
      onChanged: (val) {
        pickedDate = val;
      },
      validator: (val) {
        return null;
      },
    );

    String selectedDate = '';
    validation.contains('/') == true
        ? selectedDate = pickedDate.replaceAll('-', '/')
        : pickedDate.replaceAll('/', '/');
    validation.contains('-') == true
        ? selectedDate = pickedDate.replaceAll('/', '-')
        : pickedDate.replaceAll('-', '-');

    labelTitle.contains('از')
        ? _dateTimeController.selectedStartDate.value = selectedDate
        : _dateTimeController.selectedEndDate.value = selectedDate;
    _dateTimeController.update();
  }

  @override
  Widget build(BuildContext context) {
    GDateTimeController _dateTimeController = Get.put(GDateTimeController());
    String pickedDate = '';
    return TextButton(
      style: Styles().dateTimeStyleButton,
      focusNode: FocusNode(),
      autofocus: false,
      onPressed: () async {
        DateTimePicker(
          initialValue: DateTime.now().toString(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2100),
          dateLabelText: 'Date',
          onChanged: (val) {
            pickedDate = val;
          },
          validator: (val) {
            return null;
          },
        );
        String selectedDate = '';
        validation.contains('/') == true
            ? selectedDate = pickedDate.replaceAll('-', '/')
            : pickedDate.replaceAll('/', '/');
        validation.contains('-') == true
            ? selectedDate = pickedDate.replaceAll('/', '-')
            : pickedDate.replaceAll('-', '-');

        labelTitle.contains('از')
            ? _dateTimeController.selectedStartDate.value = selectedDate
            : _dateTimeController.selectedEndDate.value = selectedDate;
        _dateTimeController.update();
      },
      child: Obx(
        () => Text(
          labelTitle.contains('از')
              ? _dateTimeController.selectedStartDate.toString()
              : _dateTimeController.selectedEndDate.toString(),
          style: Responsive.isDesktop(context)
              ? CustomTextStyle().textStyleDesktopkSecondrayColor
              : CustomTextStyle().textStyleTabletkSecondrayColor,
        ),
      ),
    );
  }
}
