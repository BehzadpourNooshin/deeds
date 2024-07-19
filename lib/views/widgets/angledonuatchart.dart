import 'package:deedsuser/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MyDoughnutChartData {
  MyDoughnutChartData(this.x, this.y);
  final String x;
  final double y;
}

class MyDoughnutChartWidget extends StatelessWidget {
  final List<MyDoughnutChartData> dataSource;
  final ChartTitle title;
  MyDoughnutChartWidget(
      {super.key, required this.dataSource, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                child: SfCircularChart(
                    title: title,
                    annotations: <CircularChartAnnotation>[
                      CircularChartAnnotation(
                          widget: Container(
                              child: const Text('2000GB',
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 0.5),
                                      fontSize: 25))))
                    ],
                    palette: [
                      Color(0xFFFFCF26),
                      Color(0xFFEE2727),
                      kLightGreenColor
                    ],
                    tooltipBehavior: TooltipBehavior(enable: true),
                    legend: Legend(
                      alignment: ChartAlignment.center,
                      width: '100%',
                      height: '100%',
                      shouldAlwaysShowScrollbar: true,
                      //backgroundColor: kSecondaryColor,
                      isVisible: true,
                      position: LegendPosition.bottom,
                    ),
                    series: <CircularSeries>[
                      DoughnutSeries<MyDoughnutChartData, String>(
                        // Ending angle of doughnut

                        dataSource: dataSource,
                        xValueMapper: (MyDoughnutChartData data, _) => data.x,
                        yValueMapper: (MyDoughnutChartData data, _) => data.y,
                      )
                      // Starting angle of doughnut
                      //  startAngle: 270,
                      // Ending angle of doughnut
                      //    endAngle: 90)
                    ]))));
  }
}
