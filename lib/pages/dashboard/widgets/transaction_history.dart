import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smartmoney/pages/dashboard/widgets/history_tile.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.3 - 70,
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(FontAwesomeIcons.calendarCheck),
                SizedBox(
                  width: 5,
                ),
                Text("Your recent activities"),
              ],
            ),
          ),
          const Divider(),
          Expanded(
              child: ListView(
            children: const [
              HistoryTile(title: 'salary', amount: 8000, date: '01/11/2022'),
              HistoryTile(
                  title: 'New Shoes',
                  amount: -100,
                  date: '20/10/2022',
                  lost: true),
              HistoryTile(
                  title: 'Chicken', amount: -10, date: '19/10/2022', lost: true),
              HistoryTile(
                  title: 'salary', amount: 100, date: '10/10/2022', lost: true),
            ],
          )),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.wallet_outlined),
                const SizedBox(
                  width: 8,
                ),
                const Text("Missing an activity?"),
                const SizedBox(
                  width: 5,
                ),
                TextButton(onPressed: () {}, child: const Text('ADD NEW'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
