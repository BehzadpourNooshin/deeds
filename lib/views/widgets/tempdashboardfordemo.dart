// import 'package:d_chart/commons/data_model.dart';
// import 'package:deedsuser/theme/themes.dart';
// import 'package:deedsuser/utils/constant.dart';
// import 'package:deedsuser/utils/responsive.dart';
// import 'package:deedsuser/views/widgets/sidemenu.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

// class ChartData {
//   ChartData(this.x, this.y);
//   final String x;
//   final double y;
// }

// class Charts extends StatelessWidget {
//   const Charts({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(children: [
//       SizedBox(
//           width: Get.width / 1.2,
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 20,
//               ),
//               Expanded(
//                 flex: 1,
//                 child: Row(
//                   children: [
//                     SizedBox(width: 30),
//                     Expanded(
//                       flex: 1,
//                       child: Chart1(),
//                     ),
//                     VerticalDivider(
//                       width: 20,
//                       thickness: 1,
//                       color: kPrimaryColor,
//                     ),
//                     Expanded(
//                       flex: 1,
//                       child: Chart2(),
//                     ),
//                     VerticalDivider(
//                       width: 20,
//                       thickness: 1,
//                       color: kPrimaryColor,
//                     ),
//                     Expanded(
//                       flex: 1,
//                       child: Chart3(),
//                     ),
//                     VerticalDivider(
//                       width: 20,
//                       thickness: 1,
//                       color: kPrimaryColor,
//                     ),
//                     Expanded(
//                       flex: 1,
//                       child: Chart4(),
//                       // Add your chart configuration here
//                     ),
//                     SizedBox(width: 30),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Divider(
//                 height: 20,
//                 thickness: 1,
//                 indent: 20,
//                 endIndent: 20,
//                 color: kPrimaryColor,
//               ),
//               Expanded(child: Table(), flex: 1),
//             ],
//           )),
//       if (Responsive.isDesktop(context))
//         SizedBox(
//             width: Get.width - Get.width / 1.2,
//             height: Get.height,
//             child: CollapsibleSidebar())
//     ]);
//   }
// }

// class Chart4 extends StatelessWidget {
//   const Chart4({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         padding: EdgeInsets.all(20),
//         decoration: BoxDecoration(
//             border: Border(
//                 bottom: BorderSide(color: kPrimaryColor),
//                 top: BorderSide(color: kPrimaryColor)),
//             borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(25),
//                 bottomRight: Radius.circular(25))),
//         child: SfCircularChart(
//             // Enables the tooltip for all the series in chart
//             tooltipBehavior: TooltipBehavior(enable: true),
//             legend: Legend(isVisible: true, position: LegendPosition.bottom),
//             series: <CircularSeries>[
//               // Initialize line series
//               PieSeries<ChartData, String>(
//                   dataLabelSettings: DataLabelSettings(isVisible: true),
//                   // Enables the tooltip for individual series
//                   enableTooltip: true,
//                   dataSource: [
//                     // Bind data source
//                     ChartData('Jan', 35),
//                     ChartData('Feb', 28),
//                     ChartData('Mar', 34),
//                     ChartData('Apr', 32),
//                     ChartData('May', 40)
//                   ],
//                   xValueMapper: (ChartData data, _) => data.x,
//                   yValueMapper: (ChartData data, _) => data.y)
//             ]));
//   }
// }

// class Chart3 extends StatelessWidget {
//   const Chart3({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(20),
//       decoration: BoxDecoration(
//           border: Border(
//               bottom: BorderSide(color: kPrimaryColor),
//               top: BorderSide(color: kPrimaryColor)),
//           borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(25), bottomRight: Radius.circular(25))),
//       child: SfCartesianChart(
//         enableAxisAnimation: true,
//         tooltipBehavior: TooltipBehavior(enable: true),
//         legend: Legend(isVisible: true, position: LegendPosition.bottom),
//         zoomPanBehavior: ZoomPanBehavior(
//           enablePanning: true,
//         ),
//         plotAreaBackgroundColor: kCardColor,
//         backgroundColor: kCardColor,
//         //  borderWidth: 10,
//         //  borderColor: kPrimaryColor,
//         title: ChartTitle(text: "Column Chart"),
//         series: [
//           ColumnSeries<SalesData, double>(
//               dataSource: chartData,
//               xValueMapper: (SalesData sales, _) => sales.year,
//               yValueMapper: (SalesData sales, _) => sales.sales),
//         ],
//       ),
//     );
//   }
// }

// class Chart2 extends StatelessWidget {
//   const Chart2({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(10),
//       decoration: BoxDecoration(
//           border: Border(
//               bottom: BorderSide(color: kPrimaryColor),
//               top: BorderSide(color: kPrimaryColor)),
//           borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(25), bottomRight: Radius.circular(25))),
//       child: SfCartesianChart(
//         enableAxisAnimation: true,
//         tooltipBehavior: TooltipBehavior(enable: true),
//         legend: Legend(isVisible: true, position: LegendPosition.bottom),
//         zoomPanBehavior: ZoomPanBehavior(
//           enablePanning: true,
//         ),
//         // plotAreaBackgroundColor: kCardColor,
//         // backgroundColor: kCardColor,
//         //  borderWidth: 10,
//         //  borderColor: kPrimaryColor,
//         title: ChartTitle(text: "Column Chart"),
//         series: [
//           ColumnSeries<SalesData, double>(
//               dataSource: chartData,
//               xValueMapper: (SalesData sales, _) => sales.year,
//               yValueMapper: (SalesData sales, _) => sales.sales),
//         ],
//       ),
//     );
//   }
// }

// class Chart1 extends StatelessWidget {
//   const Chart1({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(10),
//       decoration: BoxDecoration(
//           border: Border(
//               bottom: BorderSide(color: kPrimaryColor),
//               top: BorderSide(color: kPrimaryColor)),
//           borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(25), bottomRight: Radius.circular(25))),
//       child: SfCartesianChart(
//           legend: Legend(isVisible: true, position: LegendPosition.bottom),
//           zoomPanBehavior: ZoomPanBehavior(
//             enablePanning: true,
//           ),
//           plotAreaBackgroundColor: kCardColor,
//           backgroundColor: kCardColor,
//           title: ChartTitle(
//               text:
//                   'Half yearly sales analysis'), //Chart title.          legend: Legend(isVisible: true), // Enables the legend.          tooltipBehavior: ChartTooltipBehavior(enable: true), // Enables the tooltip.
//           primaryXAxis: CategoryAxis(
//             majorGridLines: MajorGridLines(width: 0),
//             majorTickLines: MajorTickLines(width: 0),
//             plotOffset: 0,
//             rangePadding: ChartRangePadding.additional,
//             autoScrollingDelta: 15,
//             autoScrollingMode: AutoScrollingMode.end,
//           ), // Initialize category axis.
//           series: <LineSeries<MySalesData, String>>[
//             // Initialize line series.
//             LineSeries<MySalesData, String>(
//                 dataSource: [
//                   MySalesData('Jan', 35),
//                   MySalesData('Feb', 28),
//                   MySalesData('Mar', 34),
//                   MySalesData('Apr', 32),
//                   MySalesData('May', 40),
//                   MySalesData('Jan', 80),
//                   MySalesData('Feb', 90),
//                   MySalesData('Mar', 100),
//                 ],
//                 xValueMapper: (MySalesData sales, _) => sales.year,
//                 yValueMapper: (MySalesData sales, _) => sales.sales)
//           ]),
//     );
//   }
// }

// List<NumericData> numericDataList = [
//   NumericData(domain: 1, measure: 3),
//   NumericData(domain: 2, measure: 5),
//   NumericData(domain: 3, measure: 9),
//   NumericData(domain: 4, measure: 6.5),
// ];

// final numericGroupList = [
//   NumericGroup(
//     id: '1',
//     data: numericDataList,
//   ),
// ];
// List<OrdinalData> ordinalDataList = [
//   OrdinalData(domain: 'Mon', measure: 3, color: Colors.blue[300]),
//   OrdinalData(domain: 'Tue', measure: 5, color: Colors.amber[300]),
//   OrdinalData(domain: 'Wed', measure: 9, color: Colors.purple[300]),
//   OrdinalData(domain: 'Thu', measure: 6.5, color: Colors.pink[300]),
// ];

// class SalesData {
//   SalesData(this.year, this.sales, double d, int i);
//   final double year;
//   final double sales;
// }

// class MySalesData {
//   MySalesData(this.year, this.sales);
//   final String year;
//   final double sales;
// }

// List<SalesData> chartData = [
//   SalesData(2004, 7),
//   SalesData(2005, 5),
//   SalesData(2006, 9),
//   SalesData(2007, 2),
//   SalesData(2008, 10)
// ];

// class Employee {
//   Employee(this.id, this.name, this.designation, this.salary);
//   final int id;
//   final String name;
//   final String designation;
//   final int salary;
// }

// final List<ChartData> mychartData = [
//   ChartData('David', 25),
//   ChartData('Steve', 38),
//   ChartData('Jack', 34),
//   ChartData('Others', 52)
// ];

// class MyChartData {
//   MyChartData(this.x, this.y);
//   final String x;
//   final double y;
// }
