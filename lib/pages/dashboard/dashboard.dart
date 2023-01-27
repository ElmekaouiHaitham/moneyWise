import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartmoney/pages/dashboard/widgets/bar_chart.dart';
import 'package:smartmoney/pages/dashboard/widgets/categories_chart.dart';
import 'package:smartmoney/pages/dashboard/widgets/line_chart.dart';
import 'package:smartmoney/pages/dashboard/widgets/progress.dart';
import 'package:smartmoney/pages/dashboard/widgets/stats_card.dart';
import 'package:smartmoney/pages/dashboard/widgets/transaction_history.dart';
import 'package:smartmoney/widgets/wrappers/my_scaffold.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    double width = Get.width;

    return MyScaffold(
      selectedTapIndex: 0,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 20),
          SizedBox(
            width: width * 0.5 + 10,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      StatsCard(
                          width: width,
                          text: 'total income',
                          amount: 10000,
                          lost: false),
                      const SizedBox(width: 15),
                      StatsCard(
                          width: width,
                          text: 'expenses',
                          amount: -1000,
                          lost: true),
                      const SizedBox(width: 15),
                      StatsCard(
                          width: width,
                          text: 'net income',
                          amount: 9000,
                          lost: false),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Text("Saving goal: \$2000",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(height: 5),
                  CustomLinearProgressBar(
                      progress: 0.5, width: width * 0.5 + 10),
                  const SizedBox(height: 15),
                  const NetSavingLineChart(),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [ExpenseChart(), PredictedActualBarChart()],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(width: 20),
          TransactionHistory(width: width),
        ],
      ),
    );
  }
}
