import 'package:flutter/material.dart';

class CustomLinearProgressBar extends StatelessWidget {
  final double progress;
  final double width;
  final Color backgroundColor;
  final Color valueColor;
  final double height;

  const CustomLinearProgressBar({
    super.key,
    this.progress = 0,
    this.width = double.infinity,
    this.backgroundColor = Colors.grey,
    this.valueColor = Colors.blue,
    this.height = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: backgroundColor,
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              gradient: LinearGradient(
                colors: [
                  Colors.blue[200]!,
                  Colors.blue[600]!,
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            width: width * progress,
            height: height,
          ),
          Center(
            child: Text(
              "${(progress * 100).round()}%",
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
