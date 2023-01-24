import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartmoney/router/app_routes.dart';

class MyNavigationRail extends StatelessWidget {
  const MyNavigationRail({
    Key? key,
    required this.width,
    required this.selectedTapIndex,
  }) : super(key: key);

  final double width;
  final int selectedTapIndex;

  final List<String> pages = const <String>[
    AppRoutes.dashboard,
    AppRoutes.reports,
    '',
    AppRoutes.shopping,
    AppRoutes.chat,
    AppRoutes.settings
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.2 - 20,
      color: Colors.white,
      padding: const EdgeInsets.only(top: 20, left: 20),
      child: Column(
        children: [
          _builtListTile(
            title: 'Dashboard',
            icon: FeatherIcons.grid,
            index: 0,
          ),
          _builtListTile(
              title: 'Reports', icon: FeatherIcons.clipboard, index: 1),
          _builtListTile(
              title: 'Suggestions', icon: FontAwesomeIcons.lightbulb, index: 2),
          _builtListTile(
            title: 'Shopping',
            icon: FeatherIcons.search,
            index: 3,
          ),
          _builtListTile(
            title: 'Consult',
            icon: FeatherIcons.messageCircle,
            index: 4,
          ),
          _builtListTile(
            title: 'Settings',
            icon: FeatherIcons.settings,
            index: 5,
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 10),
            child: Row(
              children: const [
                Icon(FontAwesomeIcons.copyright, size: 16),
                SizedBox(width: 5),
                Text("2023 All rights reserved",
                    style: TextStyle(fontSize: 12)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ListTile _builtListTile({
    required String title,
    required IconData icon,
    required int index,
  }) {
    return ListTile(
        onTap: () => Get.toNamed(pages[index]),
        leading:
            Icon(icon, color: selectedTapIndex == index ? Colors.black : null),
        title: Text(title,
            style: GoogleFonts.roboto(
                fontWeight: selectedTapIndex == index ? FontWeight.bold : null,
                color: selectedTapIndex == index ? Colors.black : null)));
  }
}
