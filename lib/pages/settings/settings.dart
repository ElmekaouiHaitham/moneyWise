import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartmoney/pages/auth/reset_password/reset_password.dart';
import 'package:smartmoney/widgets/wrappers/my_scaffold.dart';

import '../../widgets/buttons/button.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    return MyScaffold(
      selectedTapIndex: 5,
      body: Container(
        margin: const EdgeInsets.only(left: 25),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        width: width * 0.7,
        height: 700,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Membership',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const Divider(),
              const SizedBox(height: 15),
              Text(
                'Current plan:',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold, fontSize: 21),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Free',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                  SizedBox(width: 5),
                  Text(
                    '\$0 USD per month',
                    style: TextStyle(fontSize: 19),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              MyButton(text: 'Subscribe \$20.99/mo ', width: width * 0.3),
              const SizedBox(height: 60),
              Text(
                'Change password',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const Divider(),
              const SizedBox(height: 15),
              SizedBox(width: width * 0.7 * 0.5, child: const ResetPassword()),
              const SizedBox(height: 20),
              const Divider(),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Logout',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(width: 8),
                      const Icon(Icons.logout)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
