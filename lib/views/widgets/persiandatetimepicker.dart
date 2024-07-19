import 'package:deedsuser/controllers/showfilterformcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';

class StartEndWidget extends GetView<MyFilterFormController> {
  const StartEndWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: TextButton(
            // onPressed: () {},
            onPressed: () async {
              // ignore: unused_local_variable
              Jalali? pickedData = await showPersianDatePicker(
                //  fieldLabelText: '',
                context: context,
                initialDate: Jalali.now(),
                firstDate: Jalali(1400),
                lastDate: Jalali(1499),
              );
              controller.setEndDate(
                  pickedData!.year, pickedData.month, pickedData.day);
              controller.update();
            },

            child: Obx(
              () => Text(
                controller.selectedEndDate.toString(),
                style: const TextStyle(
                  color: Colors.black,
                  // fontSize: (ScreenSize(context).screenWidth < 1000)
                  //     ? 11
                  //     : ScreenSize(context).screenWidth * 0.011),
                ),
              ),
            ),
          ),
        ),
        // SizedBox(width: Get.width / 5),
        Expanded(
          child: TextButton(
            // onPressed: () {},
            onPressed: () async {
              // ignore: unused_local_variable
              Jalali? pickedData = await showPersianDatePicker(
                context: context,
                initialDate: Jalali.now(),
                firstDate: Jalali(1400),
                lastDate: Jalali(1499),
              );
              controller.setStartDate(
                  pickedData!.year, pickedData.month, pickedData.day);
              controller.update();
            },

            child: Obx(
              () => Text(
                controller.selectedStartDate.toString(),
                style: const TextStyle(
                  color: Colors.black,
                  // fontSize: (ScreenSize(context).screenWidth < 1000)
                  //     ? 11
                  //     : ScreenSize(context).screenWidth * 0.011
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
