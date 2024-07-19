import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_charts/multi_charts.dart' as chart;

class ShowCards extends StatelessWidget {
  ShowCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: Get.height / 9,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: Get.width / 4,
                    child: chart.PieChart(
                      values: [15, 10, 30, 25, 20],
                      labels: [
                        "Label1",
                        "Label2",
                        "Label3",
                        "Label4",
                        "Label5"
                      ],
                      sliceFillColors: [
                        Colors.blueAccent,
                        Colors.greenAccent,
                        Colors.pink,
                        Colors.orange,
                        Colors.red,
                      ],
                      animationDuration: Duration(milliseconds: 1500),
                      legendPosition: chart.LegendPosition.Right,
                    ),
                  ),
                  SizedBox(
                    width: Get.width / 4,
                    child: chart.PieChart(
                      values: [15, 10, 30, 25, 20],
                      labels: [
                        "Label1",
                        "Label2",
                        "Label3",
                        "Label4",
                        "Label5"
                      ],
                      sliceFillColors: [
                        Colors.blueAccent,
                        Colors.greenAccent,
                        Colors.pink,
                        Colors.orange,
                        Colors.red,
                      ],
                      animationDuration: Duration(milliseconds: 1500),
                      legendPosition: chart.LegendPosition.Right,
                    ),
                  ),
                ],
              )

              //Radar Chart
            ],
          ),
        ),
      ),
    );
  }
}
