import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ExpenseChart extends StatefulWidget {
  const ExpenseChart({
    super.key,
  });

  @override
  State<ExpenseChart> createState() => _ExpenseChartState();
}

class _ExpenseChartState extends State<ExpenseChart> {
  int? inTouch;

  List<PieChartSectionData> _createSampleData() {
    return List.generate(4, (i) {
      final isTouched = i == inTouch;
      final double fontSize = isTouched ? 20 : 14;
      final double radius = isTouched ? 70 : 60;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Colors.green,
            value: 40,
            title: 'Food',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          );
        case 1:
          return PieChartSectionData(
            color: Colors.blue,
            value: 30,
            title: 'Transportation',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          );
        case 2:
          return PieChartSectionData(
            color: Colors.yellow,
            value: 15,
            title: 'Shopping',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          );
        case 3:
          return PieChartSectionData(
            color: Colors.red,
            value: 15,
            title: 'Rent',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          );
        default:
          return PieChartSectionData(
            color: Colors.red,
            value: 15,
            title: 'Rent',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<PieChartSectionData> sections = _createSampleData();
    return Container(
      color: Colors.white,
      height: 300,
      width: 300,
      child: PieChart(
        PieChartData(
            pieTouchData: PieTouchData(
              touchCallback: (flTouchEvent, pieTouchResponse) {
                setState(() {
                  inTouch =
                      pieTouchResponse?.touchedSection?.touchedSectionIndex;
                });
              },
            ),
            borderData: FlBorderData(
              show: false,
            ),
            sectionsSpace: 0,
            centerSpaceRadius: 50,
            sections: sections),
      ),
    );
  }
}
