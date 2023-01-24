// ignore: file_names

import 'package:flutter/material.dart';
import 'package:smartmoney/core/constants/colors.dart';

class LoginTextField extends StatelessWidget {
  final double width;
  final Icon? icon;
  final String suffixText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? hintText;
  final void Function()? onSuffixTap;
  final TextEditingController? controller;
  const LoginTextField(
      {super.key,
      required this.width,
      this.icon,
      this.suffixText = "",
      this.keyboardType,
      this.obscureText = false,
      this.hintText,
      this.onSuffixTap,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 40,
      child: TextField(
        controller: controller,
        textInputAction: TextInputAction.next,
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: GestureDetector(
            onTap: onSuffixTap,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  suffixText,
                  style: const TextStyle(color: mainColor),
                )
              ],
            ),
          ),
          icon: icon,
        ),
      ),
    );
  }
}
