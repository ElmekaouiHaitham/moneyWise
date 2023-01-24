import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartmoney/core/constants/colors.dart';
import 'package:smartmoney/widgets/navigation_rail.dart';

class MyScaffold extends StatelessWidget {
  final int selectedTapIndex;

  const MyScaffold(
      {super.key, required this.body, required this.selectedTapIndex});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    const Widget smallSpace = SizedBox(width: 6);
    const Widget largeSpace = SizedBox(width: 20);
    double width = Get.width;

    return Scaffold(
        backgroundColor: mainBgColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            Center(
              child: Text(
                'Need some help?',
                style: GoogleFonts.roboto(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            largeSpace,
            const Icon(FontAwesomeIcons.bell, color: Colors.black),
            largeSpace,
            const Icon(FontAwesomeIcons.moon, color: Colors.black),
            largeSpace,
            const CircleAvatar(
              radius: 17,
              child: Icon(FontAwesomeIcons.user, size: 18),
            ),
            smallSpace
          ],
          title: Row(
            children: [
              const CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage("assets/images/logo.png"),
              ),
              smallSpace,
              Text(
                'MoneyWise',
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MyNavigationRail(
                      width: width, selectedTapIndex: selectedTapIndex),
                  body
                ])));
  }
}
