import 'package:smartmoney/pages/auth/forgot_password/controller/forgot_password_controller.dart';
import 'package:smartmoney/widgets/wrappers/auth_wrapper.dart';
import 'package:smartmoney/widgets/buttons/button.dart';
import 'package:smartmoney/widgets/inputs/text_field.dart';
import 'package:smartmoney/widgets/text/title_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.width;
    ForgotPasswordController controller = Get.find();
    String title = "Forgot\nPassword?";
    if (Get.width > 500) {
      width = 400;
      List<Widget> children = [
        TitleText(width: width * 0.8, title: title),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          width: width * 0.8,
          child: Text(
            "Don't worry! It happens. Please enter the email address associated with your account.",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const SizedBox(
          height: (15),
        ),
        LoginTextField(
          controller: controller.emailController,
          hintText: "email address",
          keyboardType: TextInputType.emailAddress,
          width: width * 0.8,
          icon: const Icon(FontAwesomeIcons.at, size: 17),
        ),
        const SizedBox(
          height: (30),
        ),
        GetBuilder<ForgotPasswordController>(builder: (cont) {
          return MyButton(
            width: width * 0.8,
            showCircularBar: cont.isLoading.value,
            onTap: () => cont.reset(),
            text: "Register",
          );
        }),
      ];
      return AuthWrapper(height: height, width: width, children: children);
    }
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: AppBar(
              leading: GestureDetector(
                child: const Icon(Icons.arrow_back_ios,
                    color: Colors.grey, size: 16),
                onTap: () => Get.back(),
              ),
              backgroundColor:
                  Colors.transparent, //You can make this transparent
              elevation: 0.0, //No shadow
            ),
          ),
          SingleChildScrollView(
            child: Center(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TitleText(width: width * 0.8, title: title),
                const SizedBox(
                  height: (15),
                ),
                SizedBox(
                  width: width * 0.8,
                  child: Text(
                    "Don't worry! It happens. Please enter the email address associated with your account.",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: (15),
                ),
                LoginTextField(
                  controller: controller.emailController,
                  hintText: "email address",
                  keyboardType: TextInputType.emailAddress,
                  width: width * 0.8,
                  icon: const Icon(FontAwesomeIcons.at, size: 17),
                ),
                const SizedBox(
                  height: (30),
                ),
                GetBuilder<ForgotPasswordController>(builder: (cont) {
                  return MyButton(
                    width: width * 0.8,
                    showCircularBar: cont.isLoading.value,
                    onTap: () => cont.reset(),
                    text: "Register",
                  );
                }),
              ],
            )),
          ),
        ],
      ),
    );
  }
}
