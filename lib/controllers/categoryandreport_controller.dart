import 'package:deedsuser/models/categoryandreport_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryandReportController extends GetxController {
  final categoryName = TextEditingController();
  final reportName = TextEditingController();
  final displayTitle = TextEditingController();
  final searchOfCategoryAndReport = '-'.obs;
  final active = true;

  bool isAdd = false;
  int index = 0;
  RxList<CategoryAndReportModel> categoryandreports =
      <CategoryAndReportModel>[].obs;
  RxList<CategoryAndReportModel> categoryAndReportsShow =
      <CategoryAndReportModel>[].obs;
  RxList<CategoryAndReportModel> categoryAndReportFiltered =
      <CategoryAndReportModel>[].obs;
  RxList<CategoryAndReportModel> categoryAndReportSelected =
      <CategoryAndReportModel>[].obs;
  final countOfCategoryAndReport = 0.obs;
  final countOfCategoryAndReportsShow = 0.obs;
  final countOfCategoryAndReportFiltered = 0.obs;
  var uploadFile = false.obs;
  void updateCountOfCategoryAndReport() {
    countOfCategoryAndReport.value = countOfCategoryAndReport.value + 1;
    update();
  }

  void resetCountOfCategoryAndReport() {
    countOfCategoryAndReport.value = 0;
    update();
  }

  void updateCountOfCategoryAndReportsShow() {
    countOfCategoryAndReportsShow.value =
        countOfCategoryAndReportsShow.value + 1;
    update();
  }

  void resetCountOCategoryAndReportsShow() {
    countOfCategoryAndReportsShow.value = 0;
    update();
  }

  void updateCountOfCategoryAndReportFiltered() {
    countOfCategoryAndReportFiltered.value =
        countOfCategoryAndReportFiltered.value + 1;
    update();
  }

  void resetCountOfCategoryAndReportFiltered() {
    countOfCategoryAndReportFiltered.value = 0;
    update();
  }
}
