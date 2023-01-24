import 'package:smartmoney/core/constants/colors.dart';
import 'package:smartmoney/pages/auth/signup/controller/signup_controller.dart';
import 'package:smartmoney/router/app_routes.dart';
import 'package:smartmoney/widgets/wrappers/auth_wrapper.dart';
import 'package:smartmoney/widgets/buttons/button.dart';
import 'package:smartmoney/widgets/buttons/icon_button.dart';
import 'package:smartmoney/widgets/inputs/text_field.dart';
import 'package:smartmoney/widgets/text/title_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;
    String title = "Register";
    final SignUpController controller = Get.find();
    if (Get.width > 500) {
      width = 400;
      List<Widget> children = [
        TitleText(width: width * 0.8, title: title),
        const SizedBox(
          height: (15),
        ),
        LoginTextField(
          controller: controller.nameController,
          hintText: "name",
          keyboardType: TextInputType.name,
          width: width * 0.8,
          icon: const Icon(FontAwesomeIcons.user, size: 17),
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
          height: (15),
        ),
        LoginTextField(
          hintText: "password",
          controller: controller.passwordController,
          obscureText: true,
          keyboardType: TextInputType.visiblePassword,
          width: width * 0.8,
          icon: const Icon(Icons.lock_outline_rounded, size: 19),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: (15), bottom: (15), left: width * 0.1, right: width * 0.1),
          child: Text.rich(
            TextSpan(
                style: const TextStyle(
                  fontSize: 11,
                ),
                children: [
                  TextSpan(
                    text: "By signing up, you're agree to our ",
                    style: GoogleFonts.poppins(),
                  ),
                  TextSpan(
                    text: "Terms & Conditions ",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500, color: mainColor),
                  ),
                  TextSpan(
                    text: "and ",
                    style: GoogleFonts.poppins(),
                  ),
                  TextSpan(
                    text: "Privacy Policy.",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500, color: mainColor),
                  ),
                ]),
          ),
        ),
        GetBuilder<SignUpController>(builder: (cont) {
          return MyButton(
            width: width * 0.8,
            showCircularBar: cont.isLoading.value,
            onTap: () => cont.register(),
            text: "Register",
          );
        }),
        Padding(
          padding: const EdgeInsets.only(top: (15), bottom: (15)),
          child: Center(
            child: Text(
              "Or, register with..",
              style: GoogleFonts.poppins(),
            ),
          ),
        ),
        const MyOutlinedButton(child: Icon(FontAwesomeIcons.google)),
        const SizedBox(
          height: (15),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an account? ",
              style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
            ),
            GestureDetector(
              onTap: () => Get.toNamed(AppRoutes.login),
              child: Text(
                "Login",
                style: GoogleFonts.poppins(color: mainColor),
              ),
            )
          ],
        ),
        const SizedBox(
          height: (15),
        ),
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
                onTap: () => Navigator.of(context).pop(),
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
                LoginTextField(
                  controller: controller.nameController,
                  hintText: "name",
                  keyboardType: TextInputType.name,
                  width: width * 0.8,
                  icon: const Icon(FontAwesomeIcons.user, size: 17),
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
                  height: (15),
                ),
                LoginTextField(
                  hintText: "password",
                  controller: controller.passwordController,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  width: width * 0.8,
                  icon: const Icon(Icons.lock_outline_rounded, size: 19),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: (15),
                      bottom: (15),
                      left: width * 0.1,
                      right: width * 0.1),
                  child: Text.rich(
                    TextSpan(
                        style: const TextStyle(
                          fontSize: 11,
                        ),
                        children: [
                          TextSpan(
                            text: "By signing up, you're agree to our ",
                            style: GoogleFonts.poppins(),
                          ),
                          TextSpan(
                            text: "Terms & Conditions ",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500, color: mainColor),
                          ),
                          TextSpan(
                            text: "and ",
                            style: GoogleFonts.poppins(),
                          ),
                          TextSpan(
                            text: "Privacy Policy.",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500, color: mainColor),
                          ),
                        ]),
                  ),
                ),
                GetBuilder<SignUpController>(builder: (cont) {
                  return MyButton(
                    width: width * 0.8,
                    showCircularBar: cont.isLoading.value,
                    onTap: () => cont.register(),
                    text: "Register",
                  );
                }),
                Padding(
                  padding: const EdgeInsets.only(top: (15), bottom: (15)),
                  child: Center(
                    child: Text(
                      "Or, register with..",
                      style: GoogleFonts.poppins(),
                    ),
                  ),
                ),
                MyOutlinedButton(
                    child: Image.asset(
                  "assets/images/google.png",
                )),
                const SizedBox(
                  height: (15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: () => Get.toNamed(AppRoutes.login),
                      child: Text(
                        "Login",
                        style: GoogleFonts.poppins(color: mainColor),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: (15),
                ),
              ],
            )),
          ),
        ],
      ),
    );
  }
}
