import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartmoney/pages/dashboard/widgets/bar_chart.dart';
import 'package:smartmoney/pages/dashboard/widgets/categories_chart.dart';
import 'package:smartmoney/pages/dashboard/widgets/line_chart.dart';
import 'package:smartmoney/pages/dashboard/widgets/transaction_history.dart';
import 'package:smartmoney/pages/reports/widgets/expanded_container.dart';
import 'package:smartmoney/pages/reports/widgets/table.dart';
import 'package:smartmoney/widgets/wrappers/my_scaffold.dart';

class Reports extends StatelessWidget {
  const Reports({super.key});

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    return MyScaffold(
      selectedTapIndex: 1,
      body: Container(
        color: Colors.white,
        margin: const EdgeInsets.only(left: 25),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        width: width * 0.7,
        height: 700,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TimeRangeChips(),
              const SizedBox(height: 20),
              ExpandableContainer(
                  title: 'All',
                  child: Row(
                    children: const [MyTable(), PredictedActualBarChart()],
                  )),
              ExpandableContainer(
                title: 'Income',
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 173, 223, 115),
                                    Color.fromARGB(255, 100, 160, 48)
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(3, 3),
                                    blurRadius: 5,
                                  ),
                                ],
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 25, horizontal: 40),
                              child: Column(
                                children: [
                                  Text('Total income:',
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23,
                                      )),
                                  const SizedBox(height: 10),
                                  Text('\$1000',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.white)),
                                  const SizedBox(height: 10),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Text('Income by category',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    )),
                                const ExpenseChart(),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 30),
                        Text(
                          'Income over time',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(
                                width: width * 0.7 * 0.5,
                                child: const NetSavingLineChart()),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                        height: 550,
                        child: TransactionHistory(width: width * 0.65 * 5 / 3))
                  ],
                ),
              ),
              ExpandableContainer(
                title: 'Expenses',
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 226, 134, 106),
                                    Color.fromARGB(255, 202, 51, 5)
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(3, 3),
                                    blurRadius: 5,
                                  ),
                                ],
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 25, horizontal: 40),
                              child: Column(
                                children: [
                                  Text('Total expanses:',
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23,
                                      )),
                                  const SizedBox(height: 10),
                                  Text('\$500',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.white)),
                                  const SizedBox(height: 10),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Text('Expanses by category',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    )),
                                const ExpenseChart(),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 30),
                        Text(
                          'expenses over time',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(
                                width: width * 0.7 * 0.5,
                                child: const NetSavingLineChart()),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                        height: 550,
                        child: TransactionHistory(width: width * 0.65 * 5 / 3))
                  ],
                ),
              ),
              ExpandableContainer(
                title: 'Savings',
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 129, 144, 230),
                                    Color(0xff283593)
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(3, 3),
                                    blurRadius: 5,
                                  ),
                                ],
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 25, horizontal: 40),
                              child: Column(
                                children: [
                                  Text('Total expanses:',
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23,
                                      )),
                                  const SizedBox(height: 10),
                                  Text('\$500',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.white)),
                                  const SizedBox(height: 10),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Text('Saving goals',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    )),
                                const ExpenseChart(),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 30),
                        Text(
                          'Savings over time',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(
                                width: width * 0.7 * 0.5,
                                child: const NetSavingLineChart()),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                        height: 550,
                        child: TransactionHistory(width: width * 0.65 * 5 / 3))
                  ],
                ),
              )
            ],
          ),
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
