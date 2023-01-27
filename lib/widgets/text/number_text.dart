import 'package:flutter/material.dart';

class NumberText extends StatelessWidget {
  const NumberText({super.key, required this.number, this.fontSize});

  final int number;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      '\$${number.abs()}',
      style: TextStyle(
          color: number.isNegative ? Colors.red : Colors.green,
          fontWeight: FontWeight.bold,
          fontSize: fontSize),
    );
  }
}
