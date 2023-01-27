import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpandableContainer extends StatefulWidget {
  final Widget child;
  final String title;
  const ExpandableContainer(
      {super.key, required this.child, required this.title});

  @override
  State<ExpandableContainer> createState() => _ExpandableContainerState();
}

class _ExpandableContainerState extends State<ExpandableContainer> {
  bool _isExpanded = true;

  Icon _buildToggleIcon() {
    return Icon(
      _isExpanded ? Icons.arrow_drop_down : Icons.arrow_right,
      size: 35,
      color: Colors.black,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            child: Row(children: [
              _buildToggleIcon(),
              const SizedBox(width: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.title,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ])),
        const Divider(),
        Visibility(visible: _isExpanded, child: widget.child)
        // AnimatedContainer(
        //   duration: const Duration(milliseconds: 200),
        //   height: _isExpanded ? 600 : 0,
        //   child: widget.child,
        // ),
      ],
    );
  }
}
