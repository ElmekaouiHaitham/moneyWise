import 'package:smartmoney/pages/auth/reset_password/controller/change_password_controller.dart';
import 'package:smartmoney/widgets/buttons/button.dart';
import 'package:smartmoney/widgets/inputs/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    ChangePasswordController controller = Get.find();
    return Column(
      children: [
        LoginTextField(
          controller: controller.oldPasswordController,
          hintText: "Old password",
          keyboardType: TextInputType.visiblePassword,
          obscureText: true,
          width: width * 0.8,
          icon: const Icon(Icons.lock, size: 17),
        ),
        const SizedBox(
          height: (15),
        ),
        LoginTextField(
          controller: controller.newPasswordController,
          hintText: "New password",
          keyboardType: TextInputType.visiblePassword,
          obscureText: true,
          width: width * 0.8,
          icon: const Icon(Icons.lock, size: 17),
        ),
        const SizedBox(
          height: (30),
        ),
        GetBuilder<ChangePasswordController>(builder: (cont) {
          return MyButton(
            width: width * 0.8,
            showCircularBar: cont.isLoading.value,
            onTap: () => cont.change(),
            text: "Submit",
          );
        }),
      ],
    );
  }
}
