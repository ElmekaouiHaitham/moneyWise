import 'package:flutter/material.dart';

class StatsCard extends StatelessWidget {
  const StatsCard({
    Key? key,
    required this.width, required this.text, required this.amount, required this.lost,
  }) : super(key: key);

  final double width;
  final String text;
  final int amount;
  final bool lost;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (width * 0.5 + 10) * 1 / 3 - 10,
      color: Colors.white,
      height: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const Text(
                ' | ',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const Text(
                'this month',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            '\$$amount',
            style: TextStyle(
              color: lost? Colors.red:Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
