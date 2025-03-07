import 'package:flutter/material.dart';
import 'package:smartmoney/widgets/text/number_text.dart';

class HistoryTile extends StatelessWidget {
  const HistoryTile(
      {Key? key,
      required this.title,
      required this.amount,
      required this.date,
      this.lost = false})
      : super(key: key);

  final String title;
  final int amount;
  final String date;
  final bool lost;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [Text(title), const Spacer(), NumberText(number: amount)],
      ),
      trailing: const Icon(Icons.more_vert),
      subtitle: Text(date),
    );
  }
}
