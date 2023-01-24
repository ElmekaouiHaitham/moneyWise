import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartmoney/pages/chat/widgets/chat_box.dart';
import 'package:smartmoney/widgets/buttons/button.dart';
import 'package:smartmoney/widgets/wrappers/my_scaffold.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    double width = Get.width;

    return MyScaffold(
      selectedTapIndex: 4,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 20),
          SizedBox(width: width * 0.5 + 10, child: const ChatBox()),
          const SizedBox(width: 20),
          Container(
            width: width * 0.3 - 70,
            color: Colors.white,
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text('Welcome to the chat section of MoneyWise.',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold, fontSize: 20)),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  style: TextStyle(fontSize: 16),
                  'You are currently communicating with an AI designed to provide financial advice. To get the most accurate and helpful advice, please describe your problem as clearly as possible and keep in mind that every message is treated separately (the AI doesn\'t memorize old messages).\nIf you would like to speak with a specialized human advisor, please consider subscribing to our premium service.',
                ),
                const SizedBox(
                  height: 20,
                ),
                MyButton(text: 'Subscribe \$20.99/mo ', width: width),
              ],
            ),
          )
        ],
      ),
    );
  }
}
