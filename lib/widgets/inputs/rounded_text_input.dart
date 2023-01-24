import 'package:flutter/material.dart';


class RoundedTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final Widget icon;
  final Function(String)? onSubmitted;
  final bool isPassword;
  const RoundedTextField(
      {Key? key,
      required this.hintText,
      required this.controller,
      required this.icon,
      this.onSubmitted,
      this.isPassword = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 7,
            offset: const Offset(1, 1),
          ),
        ],
      ),
      child: TextField(
        keyboardType: isPassword
            ? TextInputType.visiblePassword
            : TextInputType.text,
        obscureText: isPassword,
        textInputAction: onSubmitted == null? TextInputAction.next:null,
        controller: controller,
        onSubmitted: onSubmitted ?? (String s) {},
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.white, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.white, width: 1),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          suffixIcon: icon,
          hintText: hintText,
        ),
      ),
    );
  }
}
