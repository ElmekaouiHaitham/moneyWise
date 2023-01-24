import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:smartmoney/widgets/wrappers/my_scaffold.dart';

class Reports extends StatelessWidget {
  const Reports({super.key});

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    return MyScaffold(
      selectedTapIndex: 1,
      body: Container(
        margin: const EdgeInsets.only(left: 25),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        width: width * 0.7,
        height: 700,
        child: Column(
          children: [TimeRangeChips()],
        ),
      ),
    );
  }
}

class TimeRangeChips extends StatefulWidget {
  const TimeRangeChips({super.key});

  @override
  State<TimeRangeChips> createState() => _TimeRangeChipsState();
}

class _TimeRangeChipsState extends State<TimeRangeChips> {
  String selectedChoice = '1D';
  List<String> choices = ['1D', '5D', '7D', '1M', '6M', '1Y', '5Y'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Other widgets or data here
        const SizedBox(height: 20),
        _buildChoiceChips()
      ],
    );
  }

  Widget _buildChoiceChips() {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: choices.map((e) => _buildChoiceChip(e)).toList(),
      // children: [
      //   _buildChoiceChip("1D"),
      //   _buildChoiceChip("5D"),
      //   _buildChoiceChip("7D"),
      //   _buildChoiceChip("1M"),
      //   _buildChoiceChip("6M"),
      //   _buildChoiceChip("1Y"),
      //   _buildChoiceChip("5Y"),
      // ],
    );
  }

  Widget _buildChoiceChip(String label) {
    return ChoiceChip(
      label: Text(label),
      selected: selectedChoice == label,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      backgroundColor: Colors.blue[100],
      selectedColor: Colors.blue[300],
      onSelected: (bool selected) {
        setState(() {
          selectedChoice = label;
        });
      },
    );
  }
}
