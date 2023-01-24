import 'package:smartmoney/core/constants/colors.dart';
import 'package:smartmoney/pages/auth/login/controller/login_controller.dart';
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

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final LoginController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    String title = "Login";
    if (Get.width > 500) {
      width = 400;
      final List<Widget> children = [
                  TitleText(width: width * 0.8, title: title),
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
                    height: (20),
                  ),
                  LoginTextField(
                    controller: controller.passwordController,
                    hintText: "password",
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    width: width * 0.8,
                    icon: const Icon(Icons.lock_outline_rounded, size: 19),
                    suffixText: "Forgot?",
                    onSuffixTap: () => Get.toNamed(AppRoutes.forgot),
                  ),
                  const SizedBox(
                    height: (30),
                  ),
                  GetBuilder<LoginController>(builder: (cont) {
                    return MyButton(
                      width: width * 0.8,
                      showCircularBar: cont.isLoading.value,
                      onTap: () => cont.login(),
                      text: "Login",
                    );
                  }),
                  Padding(
                    padding: const EdgeInsets.only(top: (20), bottom: (20)),
                    child: Center(
                      child: Text(
                        "Or, login with..",
                        style: GoogleFonts.poppins(),
                      ),
                    ),
                  ),
                  MyOutlinedButton(
                    onTap: () => controller.loginWithGoogle(),
                    child: const Icon(FontAwesomeIcons.google),
                  ),
                  const SizedBox(
                    height: (20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                      ),
                      GestureDetector(
                        onTap: () => Get.toNamed(AppRoutes.signup),
                        child: Text(
                          "Register",
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
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TitleText(width: width * 0.8, title: title),
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
              height: (20),
            ),
            LoginTextField(
              controller: controller.passwordController,
              hintText: "password",
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              width: width * 0.8,
              icon: const Icon(Icons.lock_outline_rounded, size: 19),
              suffixText: "Forgot?",
              onSuffixTap: () => Get.toNamed(AppRoutes.forgot),
            ),
            const SizedBox(
              height: (30),
            ),
            GetBuilder<LoginController>(builder: (cont) {
              return MyButton(
                width: width * 0.8,
                showCircularBar: cont.isLoading.value,
                onTap: () => cont.login(),
                text: "Login",
              );
            }),
            Padding(
              padding: const EdgeInsets.only(top: (20), bottom: (20)),
              child: Center(
                child: Text(
                  "Or, login with..",
                  style: GoogleFonts.poppins(),
                ),
              ),
            ),
            MyOutlinedButton(
                onTap: () => controller.loginWithGoogle(),
                child: Image.asset(
                  "assets/images/google.png",
                )),
            const SizedBox(
              height: (20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                ),
                GestureDetector(
                  onTap: () => Get.toNamed(AppRoutes.signup),
                  child: Text(
                    "Register",
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
    );
  }
}

