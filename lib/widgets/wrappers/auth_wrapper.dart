import 'package:flutter/material.dart';
import 'package:smartmoney/core/constants/colors.dart';

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({
    Key? key,
    required this.height,
    required this.width,
    required this.children,
  }) : super(key: key);

  final double height;
  final double width;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBgColor,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 100),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[300]!,
                  blurRadius: 10.0,
                  offset: const Offset(0, 4),
                ),
              ],
              borderRadius: BorderRadius.circular(20),
            ),
            height: height,
            width: width,
            child: Center(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: children,
            )),
          ),
        ],
      ),
    );
  }
}
