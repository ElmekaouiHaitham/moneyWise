import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartmoney/widgets/wrappers/my_scaffold.dart';

import '../../widgets/inputs/rounded_text_input.dart';

class Shopping extends StatefulWidget {
  const Shopping({super.key});

  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  String _selectedCategory = 'Electronics';
  final _productController = TextEditingController();
  final List<String> _categories = [
    'Electronics',
    'Fashion',
    'Home & Kitchen',
    'Sports & Outdoors',
    'Books',
    'Others',
  ];
  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    return MyScaffold(
        selectedTapIndex: 3,
        body: Container(
          margin: const EdgeInsets.only(left: 25),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          width: width * 0.7,
          height: 700,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                  decoration: const BoxDecoration(
                      color: Color(0xFFFFB2B2),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  width: width * 0.7,
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.warning,
                        color: Colors.red,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    "Before you make your purchase, consider if this product is truly necessary. By taking our quick quiz, you can evaluate your need for this item and make an informed decision. ",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "Click here",
                                style: const TextStyle(color: Colors.blue),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    //Navigate to quiz here
                                  },
                              ),
                              TextSpan(
                                text: " to take the quiz now.",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: width * 0.7 * 0.7,
                    child: RoundedTextField(
                      hintText: 'Search for a product',
                      icon: const Icon(FeatherIcons.search),
                      controller: _productController,
                    ),
                  ),
                  DropdownButton(
                    hint: const Text('Select a category'),
                    value: _selectedCategory,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedCategory = newValue!;
                      });
                    },
                    items: _categories
                        .map(
                          (category) => DropdownMenuItem(
                            value: category,
                            child: Text(category),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const SizedBox(height: 16),
              Expanded(
                child: ListView(
                  children: const <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Popular Products: iPhone, Samsung Galaxy, MacBook, Nest Mini, Echo Dot, etc.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
