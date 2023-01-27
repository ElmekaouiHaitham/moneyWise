import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartmoney/widgets/text/number_text.dart';

class MyTable extends StatelessWidget {
  const MyTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 0),
              blurRadius: 5,
            ),
          ]),
      child: DataTable(
        columnSpacing: 15,
        dataRowHeight: 60,
        headingRowHeight: 50,
        columns: const [
          DataColumn(
            label: Text("",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )),
            numeric: false,
            tooltip: "",
          ),
          DataColumn(
            label: Text("Income",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )),
            numeric: false,
            tooltip: "",
          ),
          DataColumn(
            label: Text("Expenses",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )),
            numeric: false,
            tooltip: "",
          ),
          DataColumn(
            label: Text("Savings",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )),
            numeric: false,
            tooltip: "",
          ),
        ],
        rows: [
          const DataRow(cells: [
            DataCell(Text("Number of Transactions")),
            DataCell(Text("10")),
            DataCell(Text("5")),
            DataCell(Text("5")),
          ]),
          const DataRow(cells: [
            DataCell(Text("Total Amount")),
            DataCell(Text("\$1000")),
            DataCell(Text("\$500")),
            DataCell(Text("\$500")),
          ]),
          const DataRow(cells: [
            DataCell(Text("Average per Day")),
            DataCell(Text("\$100")),
            DataCell(Text("\$50")),
            DataCell(Text("\$50")),
          ]),
          DataRow(cells: [
            DataCell(Text(
              "Net Income",
              style:
                  GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 20),
            )),
            const DataCell(Text('')),
            const DataCell(NumberText(
              fontSize: 20,
              number: 500,
            )),
            const DataCell(
              Text(
                '',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
